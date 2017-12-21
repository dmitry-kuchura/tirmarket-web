<?php

namespace Core;

use I18n;
use Core\QB\DB;
use Modules\Cart\Models\Cart;
use Modules\Catalog\Models\Filter;
use Modules\Catalog\Models\Groups;
use Modules\Catalog\Models\Items;
use Modules\Content\Models\Menu;
use Modules\Content\Models\Slider;

class Widgets
{

    static $_instance;
    public $_data = [];
    public $_contentMenu = [];
    public $_tree = [];

    static function factory()
    {
        if (self::$_instance == null) {
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
                $data = null;
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

    /* Основные */

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
        $array['user'] = User::info();
        $array['top_menu'] = Menu::getTopMenu();
        $array['menu'] = Menu::contentMenu();
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
            HTML::media('js/programmer/translate-' . I18n::$lang . '.js', false),
            HTML::media('js/noty/packaged/jquery.noty.packaged.js', false),
        ];

        return ['scripts' => $scripts];
    }

    public function Footer()
    {
        $result = Menu::getFooterMenu();

        return ['left' => $result['left'], 'right' => $result['right']];
    }

    /* Главная страница */

    public function Index_Manufactures()
    {
        $result = CommonI18n::factory('brands')->getRows(1, 'sort', 'ASC', 18);

        return ['result' => $result];
    }

    public function Index_Slider()
    {
        $result = Slider::getSlider();

        return ['slider' => $result];
    }

    public function Index_News()
    {
        $result = CommonI18n::factory('news')->getRows(null, 'id', 'DESC', 2);

        return ['result' => $result];
    }

    public function Index_Categories()
    {
        $result = Groups::getPopularCategories(4);

        return ['result' => $result];
    }

    public function Index_Sale()
    {
        $array['sale'] = Items::getItemsByFlag('sale');
        $array['top'] = Items::getItemsByFlag('top');
        $array['favorites'] = Cookie::getArray('favorites', []);

        return $array;
    }

    public function Index_Catalog()
    {
        $result = Groups::getGroups();

        return [
            'result' => $result,
        ];
    }

    public function Index_Partners()
    {
        $result = CommonI18n::factory('partners')->getRows(1, 'id', 'DESC', Config::get('basic.limit_partners'));
        $partners = CommonI18n::factory('control')->getRowSimple('partners', 'alias');
        return ['result' => $result, 'text' => $partners->text_left];
    }

    /* Страницы каталога */

    public function Catalog_Viewed()
    {
        $result = Items::getViewedItems(null, null, 5);

        return $result;
    }

    public function Catalog_Filter()
    {
        $array = Filter::getClickableFilterElements();
        $brands = Filter::getBrandsWidget();
        $specifications = Filter::getSpecificationsWidget();

        return [
            'brands' => $brands,
            'specifications' => $specifications,
            'filter' => $array['filter'],
            'min' => $array['min'],
            'max' => $array['max'],
        ];
    }

    /* Страницы Личного Кабинета  */

    public function User_Transport()
    {
        $result = DB::select()
            ->from('users_transport')
            ->where('users_transport.user_id', '=', User::info()->id)
            ->find_all();

        return ['result' => $result];
    }

}
