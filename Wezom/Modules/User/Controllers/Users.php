<?php

namespace Wezom\Modules\User\Controllers;

use Core\Config;
use Wezom\Modules\Base;
use Core\QB\DB;
use Core\Route;
use Core\User;
use Core\Widgets;
use Core\Message;
use Core\Arr;
use Core\Image;
use Core\HTTP;
use Core\View;
use Core\Pager\Pager;

use Wezom\Modules\User\Models\Users AS Model;

class Users extends Base
{

    public $tpl_folder = 'Users';
    public $page;
    public $limit;
    public $offset;

    function before()
    {
        parent::before();
        $this->_seo['h1'] = __('Пользователи');
        $this->_seo['title'] = __('Пользователи');
        $this->setBreadcrumbs(__('Пользователи'), 'wezom/' . Route::controller() . '/index');
        $this->page = (int)Route::param('page') ? (int)Route::param('page') : 1;
        $this->limit = (int)Arr::get($_GET, 'limit', Config::get('basic.limit_backend')) < 1 ?: Arr::get($_GET, 'limit', Config::get('basic.limit_backend'));
        $this->offset = ($this->page - 1) * $this->limit;
    }


    function indexAction()
    {
        $status = null;
        if (isset($_GET['status']) && $_GET['status'] != '') {
            $status = Arr::get($_GET, 'status', 1);
        }
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
            $post['password'] = trim(Arr::get($_POST, 'password'));
            if (Model::valid($post)) {
                if ($post['password']) {
                    $post['password'] = User::factory()->hash_password($post['password']);
                } else {
                    unset($post['password']);
                }
                $res = Model::update($post, Route::param('id'));
                if ($res) {
                    Message::GetMessage(1, __('Вы успешно изменили данные!'));
                } else {
                    Message::GetMessage(0, __('Не удалось изменить данные!'));
                }
                $this->redirectAfterSave(Route::param('id'));
            }
            $result = Arr::to_object($post);
        } else {
            $result = Model::getRow(Route::param('id'));
        }

        $this->_toolbar = Widgets::get('Toolbar_Edit');
        $this->_seo['h1'] = __('Редактирование');
        $this->_seo['title'] = __('Редактирование');
        $this->setBreadcrumbs(__('Редактирование'), 'wezom/' . Route::controller() . '/edit/' . Route::param('id'));
        $this->_content = View::tpl([
            'obj' => $result,
            'tpl_folder' => $this->tpl_folder,
            'currencies' => Model::getCurrencies(),
            'count_orders' => Model::getCountOrders(Route::param('id')),
            'count_good_orders' => Model::getCountGoodOrders(Route::param('id')),
            'amount_good_orders' => Model::getAmountGoodOrders(Route::param('id')),
            'socials' => Model::getSocials($result->id),
        ], $this->tpl_folder . '/Form');
    }

    function addAction()
    {
        if ($_POST) {
            $post = $_POST['FORM'];
            $post['status'] = Arr::get($_POST, 'status', 0);
            $post['password'] = trim(Arr::get($_POST, 'password'));
            if (Model::valid($post)) {
                $post['password'] = User::factory()->hash_password($post['password']);
                $post['hash'] = User::factory()->hash_user($post['email'], $post['password']);
                $res = Model::insert($post);
                if ($res) {
                    Message::GetMessage(1, __('Вы успешно добавили данные!'));
                    $this->redirectAfterSave($res);
                } else {
                    Message::GetMessage(0, __('Не удалось добавить данные!'));
                }
            }
            unset($post['password']);
            $result = Arr::to_object($post);
        } else {
            $result = [];
        }
        $this->_toolbar = Widgets::get('Toolbar_Edit');
        $this->_seo['h1'] = __('Редактирование');
        $this->_seo['title'] = __('Редактирование');
        $this->setBreadcrumbs(__('Редактирование'), 'wezom/' . Route::controller() . '/edit/' . Route::param('id'));
        $this->_content = View::tpl(
            [
                'obj' => $result,
                'tpl_folder' => $this->tpl_folder,
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
        Model::delete($id);
        Message::GetMessage(1, __('Данные удалены!'));
        HTTP::redirect('wezom/' . Route::controller() . '/index');
    }

}