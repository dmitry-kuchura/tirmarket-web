<?php

namespace Wezom\Modules\Catalog\Controllers;

use Core\Arr;
use Core\HTTP;
use Core\View;
use Core\Route;
use Core\Config;
use Core\Widgets;
use Core\Message;
use Core\Pager\Pager;
use Wezom\Modules\Base;

use Wezom\Modules\Catalog\Models\Currencies AS Model;

class Currencies extends Base
{

    public $tpl_folder = 'Catalog/Currencies';
    public $limit;

    function before()
    {
        parent::before();
        $this->_seo['h1'] = __('Валюты');
        $this->_seo['title'] = __('Валюты');
        $this->setBreadcrumbs(__('Валюты'), 'wezom/' . Route::controller() . '/index');
        $this->limit = (int)Arr::get($_GET, 'limit', Config::get('basic.limit_backend')) < 1 ?: Arr::get($_GET, 'limit', Config::get('basic.limit_backend'));
    }

    function indexAction()
    {
        $status = null;

        $page = (int)Route::param('page') ? (int)Route::param('page') : 1;
        $count = Model::countRows($status);
        $result = Model::getRows($status, 'id', 'DESC', $this->limit, ($page - 1) * $this->limit);
        $pager = Pager::factory($page, $count, $this->limit)->create();
        $this->_toolbar = Widgets::get('Toolbar/List', ['add' => 1, 'delete' => 1]);
        $this->_content = View::tpl(
            [
                'result' => $result,
                'tpl_folder' => $this->tpl_folder,
                'tablename' => Model::$table,
                'count' => $count,
                'pager' => $pager,
                'pageName' => $this->_seo['h1'],
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
                } else {
                    Message::GetMessage(0, __('Не удалось изменить данные!'));
                }
                $this->redirectAfterSave(Route::param('id'));
            }
            $result = Arr::to_object($post);
            $langs = [];
            foreach ($this->_languages as $key => $lang) {
                $langs[$key] = $result->$key;
                unset($result->key);
            }
        } else {
            $result = Model::getRow((int)Route::param('id'));
        }
        $this->_toolbar = Widgets::get('Toolbar/Edit');
        $this->_seo['h1'] = __('Редактирование');
        $this->_seo['title'] = __('Редактирование');
        $this->setBreadcrumbs(__('Редактирование'), 'wezom/' . Route::controller() . '/edit/' . Route::param('id'));
        $this->_content = View::tpl(
            [
                'obj' => $result,
                'langs' => $langs,
                'languages' => $this->_languages,
                'tpl_folder' => $this->tpl_folder,
            ], $this->tpl_folder . '/Form');
    }

    function addAction()
    {
        if ($_POST) {
            $post = $_POST['FORM'];
            $post['status'] = Arr::get($_POST, 'status', 0);
            $post['show_image'] = Arr::get($_POST, 'show_image', 0);
            if (Model::valid($post)) {
                $post['date'] = strtotime($post['date']);
                $post['alias'] = Model::getUniqueAlias(Arr::get($post, 'alias'));
                $res = Model::insert($post);
                if ($res) {
                    Model::uploadImage($res);
                    Message::GetMessage(1, __('Вы успешно добавили данные!'));
                    $this->redirectAfterSave($res);
                } else {
                    Message::GetMessage(0, __('Не удалось добавить данные!'));
                }
            }
            $result = Arr::to_object($post);
        } else {
            $result = [];
        }
        $this->_toolbar = Widgets::get('Toolbar/Edit');
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
        Model::deleteImage($page['obj']->image);
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

        Model::deleteImage($page['obj']->image, $id);
        Message::GetMessage(1, __('Данные удалены!'));
        HTTP::redirect('wezom/' . Route::controller() . '/edit/' . $id);
    }
}