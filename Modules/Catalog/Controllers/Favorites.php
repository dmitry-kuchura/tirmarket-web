<?php

namespace Modules\Catalog\Controllers;

use Core\Common;
use Core\CommonI18n;
use Core\Cookie;
use Core\HTML;
use Core\Route;
use Core\View;
use Core\Config;
use Core\Pager\Pager;
use Core\Arr;
use Modules\Catalog\Models\Filter;
use Core\Text;
use Core\HTTP;
use Modules\Base;
use Modules\Catalog\Models\Groups AS Model;
use Modules\Catalog\Models\Items;
use Modules\Content\Models\Control;

class Favorites extends Base
{

    public $current;
    public $sort;
    public $type;
    protected $_template = 'Catalog';

    public function before()
    {
        parent::before();
        $this->current = Control::getRowSimple('favorites', 'alias', 1);
        if (!$this->current) {
            return Config::error();
        }
        $this->setBreadcrumbs($this->current->name, $this->current->alias);
        $this->_page = !(int)Route::param('page') ? 1 : (int)Route::param('page');
        $limit = Config::get('basic.limit_groups');
        $sort = 'sort';
        $type = 'ASC';
        $this->_limit = (int)Arr::get($_GET, 'per_page') ? (int)Arr::get($_GET, 'per_page') : $limit;
        $this->_offset = ($this->_page - 1) * $this->_limit;
        $this->sort = in_array(Arr::get($_GET, 'sort'), ['name', 'created_at', 'cost']) ? Arr::get($_GET, 'sort') : $sort;
        $this->type = in_array(strtolower(Arr::get($_GET, 'type')), ['asc', 'desc']) ? strtoupper(Arr::get($_GET, 'type')) : $type;
    }

    // Items list page. Inside group
    public function indexAction()
    {
        $result = Items::getFavorites();

        $this->_seo['title'] = $this->current->title ? $this->current->title : $this->current->name;
        $this->_seo['h1'] = $this->current->h1 ? $this->current->h1 : $this->current->name;
        $this->_seo['description'] = $this->current->description;
        $this->_seo['keywords'] = $this->current->keywords;
        $this->_seo['text_left'] = $this->current->text_left;
        $this->_seo['text_right'] = $this->current->text_right;

        $this->_content = View::tpl([
            'result' => $result
        ], 'Catalog/Favorites');
    }
}