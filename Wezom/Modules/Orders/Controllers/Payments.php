<?php

namespace Wezom\Modules\Orders\Controllers;

use Core\Config;
use Core\Route;
use Core\Widgets;
use Core\Message;
use Core\Arr;
use Core\HTTP;
use Core\View;
use Wezom\Modules\Base;
use Wezom\Modules\Orders\Models\Payments AS Model;

class Payments extends Base
{

    public $tpl_folder = 'Orders/Payments';
    public $page;
    public $limit;
    public $offset;

    function before()
    {
        parent::before();
        $this->_seo['h1'] = __('Способы оплаты');
        $this->_seo['title'] = __('Способы оплаты');
        $this->setBreadcrumbs(__('Способы оплаты'), 'wezom/' . Route::controller() . '/index');
        $this->page = (int)Route::param('page') ? (int)Route::param('page') : 1;
        $this->limit = 99;
        $this->offset = ($this->page - 1) * $this->limit;
    }

    function indexAction()
    {
        $count = Model::countRows();
        $result = Model::getRows(NULL, 'sort', 'ASC', $this->limit, $this->offset);
        $this->_filter = Widgets::get('Filter_Pages');
        $this->_toolbar = Widgets::get('Toolbar_List', ['add' => 1, 'delete' => 1]);
        $this->_content = View::tpl([
            'result' => $result,
            'count' => $count,
            'tpl_folder' => $this->tpl_folder,
            'tablename' => Model::$table,
        ], $this->tpl_folder . '/Index');
    }

    function editAction()
    {
        if ($_POST) {
            $post = $_POST['FORM'];
            $post['status'] = Arr::get($_POST, 'status', 0);
            if (Model::valid($post)) {
                $res = Model::update($post, Route::param('id'));
                if ($res) {
                    Model::uploadImage(Route::param('id'));
                    Message::GetMessage(1, __('Вы успешно изменили данные!'));
                    if (Arr::get($_POST, 'button', 'save') == 'save-close') {
                        HTTP::redirect('wezom/' . Route::controller() . '/index');
                    } else if (Arr::get($_POST, 'button', 'save') == 'save-add') {
                        HTTP::redirect('wezom/' . Route::controller() . '/add');
                    } else {
                        HTTP::redirect('wezom/' . Route::controller() . '/edit/' . Route::param('id'));
                    }
                } else {
                    Message::GetMessage(0, __('Не удалось изменить данные!'));
                }
            }
            $result = Arr::to_object($post);
        } else {
            $result = Model::getRow(Route::param('id'));
        }
        $this->_toolbar = Widgets::get('Toolbar_Edit');
        $this->_seo['h1'] = __('Редактирование');
        $this->_seo['title'] = __('Редактирование');
        $this->setBreadcrumbs(__('Редактирование'), 'wezom/' . Route::controller() . '/edit/' . Route::param('id'));
        $this->_content = View::tpl(
            [
                'obj' => $result,
                'tpl_folder' => $this->tpl_folder,
                'languages' => $this->_languages,
            ], $this->tpl_folder . '/Form');
    }

    function addAction()
    {
        if ($_POST) {
            $post = $_POST['FORM'];
            $post['status'] = Arr::get($_POST, 'status', 0);
            if (Model::valid($post)) {
                $res = Model::insert($post);
                if ($res) {
                    Model::uploadImage($res);
                    Message::GetMessage(1, __('Вы успешно добавили данные!'));
                    if (Arr::get($_POST, 'button', 'save') == 'save-close') {
                        HTTP::redirect('wezom/' . Route::controller() . '/index');
                    } else if (Arr::get($_POST, 'button', 'save') == 'save-add') {
                        HTTP::redirect('wezom/' . Route::controller() . '/add');
                    } else {
                        HTTP::redirect('wezom/' . Route::controller() . '/edit/' . $res);
                    }
                } else {
                    Message::GetMessage(0, __('Не удалось добавить данные!'));
                }
            }
            $result = Arr::to_object($post);
        } else {
            $result = [];
        }
        $this->_toolbar = Widgets::get('Toolbar_Edit');
        $this->_seo['h1'] = __('Добавление');
        $this->_seo['title'] = __('Добавление');
        $this->setBreadcrumbs(__('Добавление'), 'wezom/' . Route::controller() . '/add');
        $this->_content = View::tpl(
            [
                'obj' => $result,
                'tpl_folder' => $this->tpl_folder,
                'languages' => $this->_languages,
            ], $this->tpl_folder . '/Form');
    }

    function deleteAction()
    {
        $id = (int)Route::param('id');
        $page = Model::getRow($id);
        if (!$page) {
            Message::GetMessage(0, __('Данные не существуют!'));
            HTTP::redirect('wezom/' . Route::controller() . '/index');
        }
        Model::deleteImage($page->image);
        Model::delete($id);
        Message::GetMessage(1, __('Данные удалены!'));
        HTTP::redirect('wezom/' . Route::controller() . '/index');
    }

    function deleteImageAction()
    {
        $id = (int)Route::param('id');
        $page = Model::getRow($id);
        if (!$page) {
            Message::GetMessage(0, __('Данные не существуют!'));
            HTTP::redirect('wezom/' . Route::controller() . '/index');
        }
        Model::deleteImage($page['obj']->image);
        Message::GetMessage(1, __('Данные удалены!'));
        HTTP::redirect('wezom/' . Route::controller() . '/edit/' . $id);
    }
}