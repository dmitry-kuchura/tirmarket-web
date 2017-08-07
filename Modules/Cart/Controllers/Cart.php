<?php

namespace Modules\Cart\Controllers;

use Core\CommonI18n;
use Core\Cookie;
use Core\HTML;
use Core\HTTP;
use Core\Route;
use Core\User;
use Core\View;
use Core\Config;
use Modules\Base;
use Modules\Content\Models\Control;
use Modules\Cart\Models\Cart AS C;

class Cart extends Base
{

    public $current;

    public function before()
    {
        parent::before();
        $this->current = Control::getRowSimple(Route::controller(), 'alias', 1);
        if (!$this->current) {
            return Config::error();
        }
        $this->setBreadcrumbs($this->current->name, $this->current->alias);
        $this->_template = 'Cart';
    }

    public function indexAction()
    {
        if (Config::get('error')) {
            return false;
        }

        $this->_seo['h1'] = $this->current->h1;
        $this->_seo['title'] = $this->current->title;
        $this->_seo['keywords'] = $this->current->keywords;
        $this->_seo['description'] = $this->current->description;

        $user = User::info();

        $delivery = CommonI18n::factory('delivery')->getRows(1, 'sort', 'ASC');

        $this->_content = View::tpl([
            'user' => $user,
            'delivery' => $delivery
        ], 'Cart/Index');
    }

    public function thankAction()
    {
        if (Config::get('error')) {
            return false;
        }

        $this->_seo['h1'] = $this->current->h1;
        $this->_seo['title'] = $this->current->title;
        $this->_seo['keywords'] = $this->current->keywords;
        $this->_seo['description'] = $this->current->description;

        $user = User::info();

        $order = Cookie::get('order_id');
        if (!$order) {
            HTTP::redirect(HTML::link('cart'), 301);
        }

        Cookie::delete('order_id');

        $this->_content = View::tpl([
            'user' => $user,
            'order' => $order
        ], 'Cart/Thank');
    }

}