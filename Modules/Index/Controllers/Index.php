<?php

namespace Modules\Index\Controllers;

use Core\Route;
use Core\Config;
use Modules\Base;
use Modules\Content\Models\Control;

class Index extends Base
{

    public $current;

    public function before()
    {
        parent::before();
        $this->current = Control::getRowSimple(Route::controller(), 'alias', 1);
        if (!$this->current) {
            return Config::error();
        }
    }

    public function indexAction()
    {
        $this->_template = 'Main';
        if (Config::get('error')) {
            return false;
        }
        // Seo
        $this->_seo['h1'] = $this->current->h1;
        $this->_seo['title'] = $this->current->title;
        $this->_seo['keywords'] = $this->current->keywords;
        $this->_seo['description'] = $this->current->description;
        $this->_seo['text_left'] = $this->current->text_left;
        $this->_seo['text_right'] = $this->current->text_right;
        // Render template
        $this->_content = $this->current->text;
    }

}
    