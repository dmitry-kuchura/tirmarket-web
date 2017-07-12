<?php
namespace Wezom\Modules\Catalog\Controllers;

use Core\Config;
use Core\Route;
use Core\Widgets;
use Core\Message;
use Core\Arr;
use Core\HTTP;
use Core\View;
use Core\Pager\Pager;

use Wezom\Modules\Catalog\Models\Specifications AS Model;
use Wezom\Modules\Catalog\Models\SpecificationsValues AS SV;

class Specifications extends \Wezom\Modules\Base {

    public $tpl_folder = 'Catalog/Specifications';
    public $page;
    public $limit;
    public $offset;
    public $types;

    function before() {
        parent::before();
        $this->_seo['h1'] = __('Характеристики');
        $this->_seo['title'] = __('Характеристики');
        $this->setBreadcrumbs(__('Характеристики'), 'wezom/'.Route::controller().'/index');

        $this->page = (int) Route::param('page') ? (int) Route::param('page') : 1;
        $this->limit = (int) Arr::get($_GET, 'limit', Config::get('basic.limit_backend')) < 1 ?: Arr::get($_GET, 'limit', Config::get('basic.limit_backend'));
        $this->offset = ($this->page - 1) * $this->limit;

        $this->types = Config::get('main.specifications_types');
    }

    function indexAction()
    {
        $status = null;
        if(isset($_GET['status']) && $_GET['status'] != ''){
            $status = Arr::get($_GET, 'status', 1);
        }
        $page = (int) Route::param('page') ? (int) Route::param('page') : 1;
        $count = Model::countRows($status);
        $result = Model::getRows($status, 'sort', 'ASC', $this->limit, $this->offset);
        $pager = Pager::factory($page, $count, $this->limit)->create();
        $this->_toolbar = Widgets::get( 'Toolbar/List', ['add' => 1, 'delete' => 1]);

        $this->_content = View::tpl([
            'result' => $result,
            'tpl_folder' => $this->tpl_folder,
            'tablename' => Model::$table,
            'count' => $count,
            'pager' => $pager,
            'types' => $this->types,
            'pageName' => $this->_seo['h1'],
        ], $this->tpl_folder.'/Index');
    }


    function editAction()
    {
        if($_POST) {
            $post = $_POST['FORM'];
            $post['status'] = Arr::get($_POST, 'status', 0);

            if(Model::valid($post)) {
                $post['alias'] = Model::getUniqueAlias(Arr::get($post, 'alias'), Route::param('id'));
                $res = Model::update($post, Route::param('id'));
                if($res) {
                    Message::GetMessage(1, __('Вы успешно изменили данные!'));
                } else {
                    Message::GetMessage(0, __('Не удалось изменить данные!'));
                }
                $this->redirectAfterSave(Route::param('id'));
            }
            $result = Arr::to_object($post);
            $langs = [];
            foreach($this->_languages as $key => $lang) {
                $langs[$key] = $result->$key;
                unset($result->key);
            }
            $obj = $result;
        } else {
            $result = Model::getRow((int)Route::param('id'));
            $obj = Arr::get($result, 'obj', []);
            $langs = Arr::get($result, 'langs', []);
        }

        $this->_toolbar = Widgets::get('Toolbar/Edit');
        $this->_seo['h1'] = __('Редактирование');
        $this->_seo['title'] = __('Редактирование');
        $this->setBreadcrumbs(__('Редактирование'), 'wezom/'.Route::controller().'/edit/'.(int) Route::param('id'));

        $list = SV::getRowsBySpecificationsID(Route::param('id'), null, 'sort', 'ASC', null, null, true);
        $this->_content = View::tpl([
            'obj' => $obj,
            'langs' => $langs,
            'tpl_folder' => $this->tpl_folder,
            'list' => $list,
            'types' => $this->types,
            'languages' => $this->_languages,
        ], $this->tpl_folder.'/Edit');
    }


    function addAction()
    {
        if($_POST){
            $post = $_POST['FORM'];
            $post['status'] = Arr::get($_POST, 'status', 0);
            if( Model::valid($post) ) {
                $post['alias'] = Model::getUniqueAlias(Arr::get($post, 'alias'));
                $res = Model::insert($post);
                if($res) {
                    Message::GetMessage(1, __('Вы успешно добавили данные!'));
                    $this->redirectAfterSave($res);
                } else {
                    Message::GetMessage(0, __('Не удалось добавить данные!'));
                }
            }
            $result = Arr::to_object($post);
            $langs = [];
            foreach($this->_languages as $key => $lang) {
                $langs[$key] = $result->$key;
                unset($result->key);
            }
            $obj = $result;
        } else {
            $result = [];
            $obj = Arr::get($result, 'obj', []);
            $langs = Arr::get($result, 'langs', []);
        }

        $this->_toolbar = Widgets::get('Toolbar/Edit');
        $this->_seo['h1'] = __('Добавление');
        $this->_seo['title'] = __('Добавление');
        $this->setBreadcrumbs(__('Добавление'), 'wezom/'.Route::controller().'/add');
        $this->_content = View::tpl([
            'obj' => $obj,
            'langs' => $langs,
            'tpl_folder' => $this->tpl_folder,
            'types' => $this->types,
            'languages' => $this->_languages,
        ], $this->tpl_folder.'/Add');
    }

    function deleteAction()
    {
        $id = (int)Route::param('id');
        $page = Model::getRow($id);
        if($page) {
            Model::delete($id);
        }
        Message::GetMessage(1, __('Данные удалены!'));
        HTTP::redirect('wezom/'.Route::controller().'/index');
    }

}