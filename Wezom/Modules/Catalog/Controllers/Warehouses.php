<?php

namespace Wezom\Modules\Catalog\Controllers;

use Core\Support;
use Core\Route;
use Core\Widgets;
use Core\Message;
use Core\Arr;
use Core\HTTP;
use Core\View;
use Wezom\Modules\Base;
use Wezom\Modules\Catalog\Models\Warehouses AS Model;

class Warehouses extends Base
{
    public $tpl_folder = 'Catalog/Warehouses';

    function before()
    {
        parent::before();
        $this->_seo['h1'] = __('Склады');
        $this->_seo['title'] = __('Склады');
        $this->setBreadcrumbs(__('Склады'), 'wezom/' . Route::controller() . '/index');
    }

    function indexAction()
    {
        $result = Model::getRows();
        $arr = [];
        foreach ($result AS $obj) {
            $arr[0][] = $obj;
        }
        $this->_filter = Widgets::get('Filter_Pages', ['open' => 1]);
        $this->_content = View::tpl(
            [
                'result' => $arr,
                'tpl_folder' => $this->tpl_folder,
                'tablename' => Model::$table,
                'pageName' => $this->_seo['h1'],
            ], $this->tpl_folder . '/Index');
    }

    function editAction()
    {
        if ($_POST) {
            $post = $_POST['FORM'];
            $post['status'] = Arr::get($_POST, 'status', 0);
            if (Model::valid($post)) {
                $post['alias'] = Model::getUniqueAlias(Arr::get($post, 'alias'), Route::param('id'));
                $res = Model::update($post, Route::param('id'));
                if ($res) {
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
            $obj = $result;
        } else {
            $result = Model::getRow((int)Route::param('id'));
            $obj = Arr::get($result, 'obj', []);
            $langs = Arr::get($result, 'langs', []);
            $groupBrands = Model::getGroupBrandsIDS((int)Route::param('id'));
            $groupSpec = Model::getGroupSpecificationsIDS((int)Route::param('id'));
        }
        $this->_toolbar = Widgets::get('Toolbar_Edit');
        $this->_seo['h1'] = __('Редактирование');
        $this->_seo['title'] = __('Редактирование');
        $this->setBreadcrumbs(__('Редактирование'), 'wezom/' . Route::controller() . '/edit/' . (int)Route::param('id'));
        $this->_content = View::tpl(
            [
                'obj' => $obj,
                'tree' => Support::getSelectOptions('Catalog/Groups/Select', 'catalog_tree', $result->parent_id, $result->id),
                'specifications' => Specifications::getRows(null, 'sort', 'ASC'),
                'langs' => $langs,
                'languages' => $this->_languages,
            ], $this->tpl_folder . '/Form');
    }

    function addAction()
    {
        if ($_POST) {
            $post = $_POST['FORM'];
            $post['status'] = Arr::get($_POST, 'status', 0);
            if (Model::valid($post)) {
                $post['alias'] = Model::getUniqueAlias(Arr::get($post, 'alias'));
                $res = Model::insert($post);
                if ($res) {
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
        $this->_toolbar = Widgets::get('Toolbar_Edit');
        $this->_seo['h1'] = __('Добавление');
        $this->_seo['title'] = __('Добавление');
        $this->setBreadcrumbs(__('Добавление'), 'wezom/' . Route::controller() . '/add');
        $this->_content = View::tpl(
            [
                'obj' => $result,
                'tpl_folder' => $this->tpl_folder,
                'tree' => Support::getSelectOptions('Catalog/Groups/Select', 'catalog_tree', $result->parent_id, $result->id),
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
        $countChildGroups = Model::countKids($id);
        if ($countChildGroups) {
            Message::GetMessage(0, __('Нельзя удалить эту группу, так как у нее есть подгруппы!'));
            HTTP::redirect('wezom/' . Route::controller() . '/index');
        }
        $countChildItems = Model::countItems($id);
        if ($countChildItems) {
            Message::GetMessage(0, __('Нельзя удалить эту группу, так как в ней содержатся товары!'));
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
        Model::deleteImage($page['obj']->image, $page->id);
        Message::GetMessage(1, __('Данные удалены!'));
        HTTP::redirect('wezom/' . Route::controller() . '/edit/' . $id);
    }

    function deleteImagePopularAction()
    {
        $id = (int)Route::param('id');
        $page = Model::getRow($id);
        if (!$page) {
            Message::GetMessage(0, __('Данные не существуют!'));
            HTTP::redirect('wezom/' . Route::controller() . '/index');
        }
        Model::deleteImagePopular($page['obj']->image_popular, $page->id);
        Message::GetMessage(1, __('Данные удалены!'));
        HTTP::redirect('wezom/' . Route::controller() . '/edit/' . $id);
    }
}