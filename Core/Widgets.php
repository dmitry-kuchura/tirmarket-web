<?php

namespace Core;

use Modules\Catalog\Models\Groups;
use Modules\Catalog\Models\Items;
use Modules\News\Models\News;
use Core\QB\DB;
use Modules\Cart\Models\Cart;
use Modules\Catalog\Models\Filter;

class Widgets
{

    static $_instance; // Constant that consists self class

    public $_data = []; // Array of called widgets
    public $_contentMenu = []; // Array of called widgets
    public $_tree = []; // Only for catalog menus on footer and header. Minus one query

    static function factory()
    {
        if (self::$_instance == NULL) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public static function get($name, $array = [], $save = true, $cache = false)
    {
        $arr = explode('_', $name);
        $viewpath = implode('/', $arr);

        if (APPLICATION == 'backend' && !Config::get('error')) {
            $w = WidgetsBackend::factory();
        } else {
            $w = Widgets::factory();
        }

        $_cache = Cache::instance();
        if ($cache) {
            if (!$_cache->get($name)) {
                $data = NULL;
                if ($save && isset($w->_data[$name])) {
                    $data = $w->_data[$name];
                } else {
                    if ($save && isset($w->_data[$name])) {
                        $data = $w->_data[$name];
                    } else if (method_exists($w, $name)) {
                        $result = $w->$name($array);
                        if ($result !== null && $result !== false) {
                            $array = array_merge($array, $result);
                            $data = View::widget($array, $viewpath);
                        } else {
                            $data = null;
                        }
                    } else {
                        $data = $w->common($viewpath, $array);
                    }
                }
                $_cache->set($name, HTML::compress($data, true));
                return $w->_data[$name] = $data;
            } else {
                return $_cache->get($name);
            }
        }
        if ($_cache->get($name)) {
            $_cache->delete($name);
        }
        if ($save && isset($w->_data[$name])) {
            return $w->_data[$name];
        }
        if (method_exists($w, $name)) {
            $result = $w->$name($array);
            if ($result !== null && $result !== false) {
                if (is_array($result)) {
                    $array = array_merge($array, $result);
                }
                return $w->_data[$name] = View::widget($array, $viewpath);
            } else {
                return $w->_data[$name] = null;
            }
        }
        return $w->_data[$name] = $w->common($viewpath, $array);
    }

    public function common($viewpath, $array)
    {
        if (file_exists(HOST . '/Views/Widgets/' . $viewpath . '.php')) {
            return View::widget($array, $viewpath);
        }
        return null;
    }

    public function Head()
    {
        $styles = [
            HTML::media('css/style.css', false),
            HTML::media('js/noty/css/animate.css', false),
        ];
        return ['styles' => $styles];

    }

    public function Header()
    {
        if (!$this->_contentMenu) {
            $this->_contentMenu = CommonI18n::factory('sitemenu')->getRows(1, 'sort');
        }
        $array['menu'] = $this->_contentMenu;
        return $array;
    }

    public function HiddenData()
    {
        $scripts = [
            HTML::media('js/programmer/initial-config.js', false),
            HTML::media('js/bundle.js', false),
            HTML::media('js/programmer/formValidationOnSubmit.js', false),
            HTML::media('js/programmer/programmer.js', false),
            HTML::media('js/programmer/translate-ru.js', false),
            HTML::media('js/noty/packaged/jquery.noty.packaged.js', false),
        ];

        $scripts_no_minify = [
            HTML::media('js/programmer/ulogin.js', false),
        ];
        return ['scripts' => $scripts, 'scripts_no_minify' => $scripts_no_minify];
    }

    public function Footer()
    {
        if (!$this->_contentMenu) {
            $this->_contentMenu = CommonI18n::factory('sitemenu')->getRows(1, 'sort');
        }
        $array['contentMenu'] = $this->_contentMenu;
        return $array;
    }

    public function Index_Manufactures()
    {
        $result = CommonI18n::factory('brands')->getRows(1, 'sort', 'ASC');

        return ['result' => $result];
    }

    public function Index_Slider()
    {
        $result = CommonI18n::factory('slider')->getRows(1, 'sort', 'ASC');
        $url = HOST . HTML::media('images/slider/big/eb2470ea77bf84d8886f79984d2975a1.jpg', false);

        $slider = [];

        foreach ($result as $key => $value) {
            if (is_file(HOST . HTML::media('images/slider/big/' . $value->image, false))) {
                $slider[] = $value;
            }
        }

        return ['slider' => $slider];
    }

    public function Index_News()
    {
        $result = Common::factory('news')->getRows(NULL, 'id', 'ASC');

        return ['result' => $result];
    }

}
