<?php

namespace Core;

use I18n;
use Core\QB\DB;
use Modules\Cart\Models\Cart;
use Modules\Catalog\Models\Items;

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

    public function common($viewPath, $array)
    {
        if (file_exists(HOST . '/Views/Widgets/' . $viewPath . '.php')) {
            return View::widget($array, $viewPath);
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
        $table = 'catalog_tree';
        $tableI18n = $table . '_i18n';

        $array['top_menu'] = DB::select(
            $tableI18n . '.*', $table . '.*'
        )
            ->from($table)
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->where($tableI18n . '.language', '=', I18n::$lang)
            ->where($table . '.top_menu', '=', 1)
            ->find_all();

        if (!$this->_contentMenu) {
            $this->_contentMenu = CommonI18n::factory('sitemenu')->getRows(1, 'sort');
        }
        $array['user'] = User::info();
        $array['menu'] = $this->_contentMenu;
        $array['cart'] = Cart::factory()->_count_goods;
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
        $left = [];
        $right = [];

        $result = CommonI18n::factory('footermenu')->getRows(1, 'sort');

        foreach ($result as $obj) {
            if ($obj->parent_id == 1) {
                $right[] = $obj;
            } else {
                $left[] = $obj;
            }
        }

        return ['left' => $left, 'right' => $right];
    }

    public function Index_Manufactures()
    {
        $result = CommonI18n::factory('brands')->getRows(1, 'sort', 'ASC', 18);

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
        $result = CommonI18n::factory('news')->getRows(NULL, 'id', 'DESC', 2);

        return ['result' => $result];
    }

    public function Index_Categories()
    {
        $lang = I18n::$lang;
        $table = 'catalog_tree';
        $tableI18n = $table . '_i18n';

        $result = DB::select(
            $tableI18n . '.*',
            $table . '.*'
        )
            ->from($table)
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->where($tableI18n . '.language', '=', $lang)
            ->where($table . '.popular', '=', 1)
            ->limit(4)
            ->find_all();

        return ['result' => $result];
    }

    public function Index_Sale()
    {
        $table = 'catalog';
        $tableI18n = $table . '_i18n';

        $array['sale'] = DB::select(
            $tableI18n . '.*', $table . '.*',
            DB::expr('( SELECT RAND() * (SELECT MAX(`catalog`.`id`) FROM `catalog`) AS `max_id`) AS `max`')
        )
            ->from($table)
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->where($tableI18n . '.language', '=', I18n::$lang)
            ->where($table . '.sale', '=', 1)
            ->where($table . '.id', '>=', 'max')
            ->find_all();

        $array['top'] = DB::select(
            $tableI18n . '.*', $table . '.*',
            DB::expr('( SELECT RAND() * (SELECT MAX(`catalog`.`id`) FROM `catalog`) AS `max_id`) AS `max`')
        )
            ->from($table)
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->where($tableI18n . '.language', '=', I18n::$lang)
            ->where($table . '.top', '=', 1)
            ->where($table . '.id', '>=', 'max')
            ->find_all();

        return $array;
    }

    public function Index_Catalog()
    {
        $table = 'catalog_tree';
        $tableI18n = $table . '_i18n';

        $array['result'] = DB::select(
            $tableI18n . '.*', $table . '.*'
        )
            ->from($table)
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->where($tableI18n . '.language', '=', I18n::$lang)
            ->where($table . '.status', '=', 1)
            ->order_by(DB::expr('RAND ()'))
            ->limit(4)
            ->find_all();

        return $array;
    }

    public function Index_Partners()
    {
        $result = CommonI18n::factory('partners')->getRows(1, 'id', 'DESC', 4);

        return ['result' => $result];
    }

    public function Catalog_Viewed()
    {
        $ids = Items::getViewedIDs();
        if (!$ids) {
            return false;
        }

        $table = 'catalog';
        $tableI18n = $table . '_i18n';

        $array['result'] = DB::select(
            $tableI18n . '.*', $table . '.*'
        )
            ->from($table)
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->where($tableI18n . '.language', '=', I18n::$lang)
            ->where('catalog.id', 'IN', $ids)
            ->where($table . '.status', '=', 1)
            ->order_by(DB::expr('RAND ()'))
            ->limit(5)
            ->find_all();
        return $array;
    }

    public function User_Transport()
    {
        $result = DB::select()
            ->from('users_transport')
            ->where('users_transport.user_id', '=', User::info()->id)
            ->find_all();

        return ['result' => $result];
    }

}
