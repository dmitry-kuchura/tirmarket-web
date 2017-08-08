<?php

namespace Modules\Contact\Controllers;

use Core\View;
use Core\Route;
use Core\Config;
use Core\CommonI18n;
use Modules\Base;
use Modules\Content\Models\Control;

class Contact extends Base
{

    public $current;

    public function before()
    {
        parent::before();
        $this->current = Control::getRowSimple(Route::controller(), 'alias', 1);
        if (!$this->current) {
            return Config::error();
        }
        $this->_template = 'Contact';
        $this->setBreadcrumbs($this->current->name, $this->current->alias);
    }

    public function indexAction()
    {
        if (Config::get('error')) {
            return false;
        }
        // Seo
        $this->_seo['h1'] = $this->current->h1;
        $this->_seo['title'] = $this->current->title;
        $this->_seo['keywords'] = $this->current->keywords;
        $this->_seo['description'] = $this->current->description;
        // Get data
        $result = CommonI18n::factory('maps')->getRows(1, 'id', 'ASC');
        // Render template
        $this->_content = View::tpl([
            'result' => $result
        ], 'Contact/Index');
    }

    public static function generate($object)
    {
        $html = '<div class="contact-card"><div class="contact-card__location">' . $object->street . '</div>';
        if ($object->phone_1) {
            $html .= '<div class="contact-card__phone"><a href="tel:+' . preg_replace("/[^0-9]/", '', $object->phone_1) . '">' . $object->phone_1 . '</a></div>';
        }
        if ($object->phone_2) {
            $html .= '<div class="contact-card__phone"><a href="tel:+' . preg_replace("/[^0-9]/", '', $object->phone_2) . '">' . $object->phone_2 . '</a></div>';
        }
        if ($object->phone_3) {
            $html .= '<div class="contact-card__phone"><a href="tel:+' . preg_replace("/[^0-9]/", '', $object->phone_3) . '">' . $object->phone_3 . '</a></div>';
        }
        if ($object->email) {
            $html .= '<div class="contact-card__email"><a href="mailto:' . $object->email . '">' . $object->email . '</a></div>';
        }
        $html .= '</div>';

        return $html;
    }

}
    