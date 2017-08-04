<?php

namespace Wezom\Modules\Contacts\Controllers;

use Core\Config;
use Core\Route;
use Core\Widgets;
use Core\Message;
use Core\Arr;
use Core\HTTP;
use Core\View;
use Core\Pager\Pager;
use Wezom\Modules\Base;
use Wezom\Modules\Contacts\Models\Picking AS Model;

class Picking extends Base
{

    public $tpl_folder = 'Contacts/Picking';
    public $page;
    public $limit;
    public $offset;

    function before()
    {
        parent::before();
        $this->_seo['h1'] = __('Сообщения из формы подбора');
        $this->_seo['title'] = __('Сообщения из формы подбора');
        $this->setBreadcrumbs(__('Сообщения из формы подбора'), 'wezom/' . Route::controller() . '/index');
        $this->page = (int)Route::param('page') ? (int)Route::param('page') : 1;
        $this->limit = Config::get('basic.limit_backend');
        $this->offset = ($this->page - 1) * $this->limit;
    }

    function indexAction()
    {
        $count = Model::countRows();
        $result = Model::getRows(null, 'created_at', 'DESC', $this->limit, $this->offset);
        $pager = Pager::factory($this->page, $count, $this->limit)->create();
        $this->_toolbar = Widgets::get('Toolbar_List', ['delete' => 1]);
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
            $res = Model::update($post, Route::param('id'));
            if ($res) {
                Message::GetMessage(1, __('Вы успешно изменили данные!'));
            } else {
                Message::GetMessage(0, __('Не удалось изменить данные!'));
            }
            $this->redirectAfterSave(Route::param('id'));
            $result = Arr::to_object($post);
        } else {
            $result = Model::getRow(Route::param('id'));
        }
        $this->_toolbar = Widgets::get('Toolbar_Edit', ['noAdd' => true]);
        $this->_seo['h1'] = __('Редактирование');
        $this->_seo['title'] = __('Редактирование');
        $this->setBreadcrumbs(__('Редактирование'), 'wezom/' . Route::controller() . '/edit/' . (int)Route::param('id'));
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