<?php

namespace Wezom\Modules\Import\Controllers;

use Core\View;
use Wezom\Modules\Base;
use Wezom\Modules\Import\Models\Import AS Model;

class Import extends Base
{
    public $tpl_folder = 'Import';

    function before()
    {
        parent::before();
        $this->_seo['h1'] = __('Статистика импорта');
        $this->_seo['title'] = __('Статистика импорта');
        $this->setBreadcrumbs(__('Статистика импорта'), 'wezom/import/index');
    }

    function indexAction()
    {
        $products = Model::countProductsInQuery();
        $categories = Model::countCategoriesInQuery();
        $count = Model::countQuery();

        $this->_content = View::tpl(
            [
                'products' => $products,
                'categories' => $categories,
                'tpl_folder' => $this->tpl_folder,
            ], $this->tpl_folder . '/Dashboard');
    }
}