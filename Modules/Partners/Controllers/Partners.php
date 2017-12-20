<?php

namespace Modules\Partners\Controllers;

use Core\CommonI18n;
use Core\Route;
use Core\View;
use Core\Config;
use Core\HTTP;
use Modules\Base;
use Modules\Partners\Models\Partners AS Model;
use Modules\Content\Models\Control;

class Partners extends Base {

    public function indexAction() {
        $page = Control::getRowSimple(Route::controller(), 'alias');

        if (!$page) {
            if (!$page) {
                return Config::error();
            }
        }

        $result = Model::getRows(1);

        $this->_seo['h1'] = $page->h1 ? $page->h1 : $page->name;
        $this->_seo['title'] = $page->title ? $page->title : $page->name;
        $this->_seo['keywords'] = $page->keywords;
        $this->_seo['description'] = $page->description;
        $this->generateParentBreadcrumbs($page->parent_id, 'content', 'parent_id');
        $this->setBreadcrumbs($page->name);

        $this->_content = View::tpl([
                    'result' => $result, 'page' => $page,
                        ], 'Content/Partners');
    }

}
