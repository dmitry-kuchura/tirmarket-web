<?php

namespace Modules\Ajax\Controllers;

use Core\Arr;
use Core\CommonI18n;
use Core\Cookie;
use Core\HTML;
use Core\NovaPoshta;
use Modules\Catalog\Models\Price;
use I18n;
use Modules\Ajax;
use Core\User;
use Modules\Cart\Models\Cart;
use Modules\Catalog\Models\Items;

class General extends Ajax
{
    /**
     * Аякс поиск на главной
     * @return bool
     */
    public function searchAction()
    {
        header('Content-type:application/json');

        $lang = Arr::get($this->raw, 'lang');
        I18n::$lang = $lang;

        $query = Arr::get($this->raw, 'search');

        if (!$query) {
            return false;
        }
        $queries = Items::getQueries($query);

        $result = Items::searchRows($queries, $this->_limit, $this->_offset);

        $data = [
            'static' => [

                'all' => __('Все результаты'),
                'href' => HTML::link('search?query=' . $query, false),
                'buy' => __('Купить'),
                'order' => __('Заказать'),
                'currency' => Price::getCurrentCurrency(),
            ],
        ];

        foreach ($result as $obj) {
            $data['result'][] = [
                'id' => $obj->id,
                'link' => HTML::link($obj->alias . '/p' . $obj->id, false),
                'image' => is_file(HOST . HTML::media('images/catalog/search/' . $obj->image, false)) ? HTML::media('images/catalog/search/' . $obj->image, false) : HTML::media('pic/no-image.png', false),
                'price' => $obj->cost > 0 ? $obj->cost : __('Не указана'),
                'title' => $obj->name,
                'currency' => $obj->cost > 0 ? Price::getCurrentCurrency() : '',
            ];
        }

        die(json_encode($data));
    }

    /**
     * Отрисовка корзины
     *
     */
    public function showCartAction()
    {
        header('Content-Type: application/json');

        $result = Cart::factory()->get_list_for_basket();
        $list = [];
        $total_price = 0;
        $total_quantity = 0;

        foreach ($result as $item) {
            $obj = Arr::get($item, 'obj');
            if ($obj) {
                $total_price += $obj->cost * $item['count'];
                $total_quantity += $item['count'];
            }
            $list[] = [
                'id' => $obj->id,
                'link' => HTML::link($obj->alias . '/p' . $obj->id, false),
                'title' => $obj->name,
                'image' => is_file(HOST . HTML::media('images/catalog/medium/' . $obj->image, false)) ? HTML::media('images/catalog/medium/' . $obj->image, false) : HTML::media('pic/no-image.png', false),
                'count' => (int)$item['count'],
                'price' => Price::getCurrencyForCart($obj->cost),
                'maxcount' => 50,
            ];
        }

        $this->answer([
            'success' => true,
            'list' => $list,
            'totalCount' => $total_quantity,
            'totalPrice' => Price::getCurrentPrice($total_price),
        ]);
    }

    /**
     * Основной обработчки корзины
     */
    public function addToCartAction()
    {
        $action = Arr::get($this->raw, 'action');

        switch ($action) {
            case 'decrement':
                $this->decrementItemAction(Arr::get($this->raw, 'id'));
                break;
            case 'increment':
                $this->incrementAction(Arr::get($this->raw, 'id'));
                break;
            case 'remove':
                $this->deleteItemAction(Arr::get($this->raw, 'id'));
                break;
            case 'default':
                $this->showCartAction();
                break;
        }

        $catalog_id = Arr::get($this->post, 'id', 0);
        $count = Arr::get($this->post, 'count', 0);

        if (!$catalog_id) {
            $this->error('No such item!');
        }

        Cart::factory()->add($catalog_id, $count);

        $this->showCartAction();
    }

    /**
     * Убираем товар
     * @param $id
     */
    public function decrementItemAction($id)
    {
        if (!$id) {
            $this->error('No such item!');
        }

        Cart::factory()->decrement($id, 1);

        $this->showCartAction();
    }

    /**
     * Добавляем товар
     * @param $id
     */
    public function incrementAction($id)
    {
        if (!$id) {
            $this->error('No such item!');
        }

        Cart::factory()->increment($id, 1);

        $this->showCartAction();
    }

    /**
     * Удаляем товар с корзины
     * @param $id
     */
    public function deleteItemAction($id)
    {
        if (!$id) {
            $this->error('No such item!');
        }

        Cart::factory()->delete($id);

        $this->showCartAction();
    }

    /**
     * Добавлем товар в избраннное
     */
    public function addToFavoriteAction()
    {
        $id = Arr::get($this->post, 'product');
        if (!$id) {
            $this->error('Опаньки, а товара то нет!');
        }
        $ids = Cookie::getArray('favorites', []);
        $count = count($ids);
        if (!in_array($id, $ids)) {
            $ids[] = $id;
            Cookie::setArray('favorites', $ids, 60 * 60 * 24 * 30);
            $count++;
            $this->success(['favorite' => true]);
        } else {
            $key = array_search($id, $ids);
            unset($ids[$key]);
            Cookie::setArray('favorites', $ids, 60 * 60 * 24 * 30);
            $count--;
            $this->success(['favorite' => false]);
        }
    }

    /**
     * Товары аналоги
     */
    public function analogueAction()
    {
        $refer = explode('/p', $_SERVER["HTTP_REFERER"]);
        $refer = $refer[1];

        $array = [];

        $result = Items::getAnalogueItems($refer);

        foreach ($result as $obj) {
            $array['result'][] = [
                'id' => $obj->id,
                'link' => HTML::link($obj->alias . '/p' . $obj->id, false),
                'title' => $obj->name,
                'image' => is_file(HOST . HTML::media('images/catalog/medium/' . $obj->image, false)) ? HTML::media('images/catalog/medium/' . $obj->image, false) : HTML::media('pic/no-image.png', false),
                'code' => $obj->artikul,
                'number' => $obj->number ? $obj->number : '------',
                'maker' => [
                    'title' => $obj->brand_name,
                    'link' => HTML::link('brands/' . $obj->brand_alias, false),
                ],
                'price' => $obj->cost . ' грн.',
                'exist' => $obj->availeble == 1 ? true : false,
                'exist-string' => $obj->availeble == 1 ? __('В наличии') : __('Нет в наличии'),
                'new' => $obj->new == 1 ? true : false,
                'promo' => $obj->top == 1 ? true : false,
                'popular' => $obj->sale == 1 ? true : false,
                'text' => [
                    'buy' => __('В корзину'),
                    'order' => __('Заказать'),
                    'orderLink' => HTML::link('hidden/order', false),
                ],
            ];
        }

        die(json_encode($array));
    }

    /**
     * Мобильное меню
     */
    public function mobileMenuAction()
    {
        $result = [];

        $menu = CommonI18n::factory('sitemenu')->getRows(1, 'sort', 'ASC');

        $catalog = CommonI18n::factory('catalog_tree')->getRows(1, 'sort', 'ASC');

        $tree = [];
        $category = [];
        $children = [];
        $account = [];

        foreach ($catalog as $obj) {
            $tree[$obj->parent_id][] = $obj;
        }

        foreach ($tree[0] as $obj) {

            if (isset($tree[$obj->id])) {
                foreach ($tree[$obj->id] as $child) {
                    $children[] = [
                        'link' => HTML::link('products/' . $child->alias, false),
                        'alias' => $child->name,
                        'children' => false,
                    ];
                }
            }

            $category[] = [
                'link' => HTML::link('products/' . $obj->alias, false),
                'alias' => $obj->name,
                'children' => $children,
            ];
        }

        foreach ($menu as $obj) {
            $result['menu'][] = [
                'link' => HTML::link($obj->url, false),
                'alias' => $obj->name,
                'children' => $obj->url == '/products' ? $category : false,
            ];
        }

        $account = [
            [
                'link' => HTML::link('account', false),
                'alias' => __('Личные данные'),
                'children' => false,
            ],
            [
                'link' => HTML::link('account/edit', false),
                'alias' => __('Редактировать профиль'),
                'children' => false,
            ],
            [
                'link' => HTML::link('account/password', false),
                'alias' => __('Напомнить/сменить пароль'),
                'children' => false,
            ],
            [
                'link' => HTML::link('account/favorites', false),
                'alias' => __('Избранное'),
                'children' => false,
            ],
            [
                'link' => HTML::link('account/orders', false),
                'alias' => __('История заказов'),
                'children' => false,
            ],
            [
                'link' => HTML::link('account/transport', false),
                'alias' => __('Добавить Т/С'),
                'children' => false,
            ],
            [
                'link' => HTML::link('account/logout', false),
                'alias' => __('Выход'),
                'children' => false,
            ],
        ];

        $result['menu'][] = [
            'link' => User::info() ? HTML::link('account') : '#',
            'alias' => User::info() ? __('Личный кабинет') : __('Авторизация/Регистрация'),
            'data-mfp' => User::info() ? '' : HTML::link('hidden/auth', false),
            'children' => User::info() ? $account : false,
        ];

        die(json_encode($result));
    }

    /**
     * Результаты поиска
     */
    public function resultAction()
    {
        $lang = Arr::get($this->raw, 'lang');
        I18n::$lang = $lang;

        $queries = Items::getQueries(urldecode(Arr::get($this->raw, 'query')));
        $result = Items::searchRows($queries);

        $array = [];

        foreach ($result as $obj) {
            $array['result'][] = [
                'id' => $obj->id,
                'link' => HTML::link($obj->alias . '/p' . $obj->id, false),
                'title' => $obj->name,
                'image' => is_file(HOST . HTML::media('images/catalog/search/' . $obj->image, false)) ? HTML::media('images/catalog/search/' . $obj->image, false) : HTML::media('pic/no-image.png', false),
                'code' => $obj->artikul ? $obj->artikul : '------',
                'number' => $obj->number ? $obj->number : '------',
                'maker' => [
                    'title' => $obj->brand_name,
                    'link' => HTML::link('brands/' . $obj->brand_alias, false),
                ],
                'price' => $obj->cost,
                'exist' => $obj->available == 1 ? true : false,
                'exist-string' => $obj->available == 1 ? __('В наличии') : __('Нет в наличии'),
                'new' => $obj->new == 1 ? true : false,
                'promo' => $obj->top == 1 ? true : false,
                'popular' => $obj->sale == 1 ? true : false,
                'text' => [
                    'currency' => Price::getCurrentCurrency(),
                    'buy' => __('В корзину'),
                    'order' => __('Заказать'),
                    'orderLink' => HTML::link('hidden/order', false),
                ],
            ];
        }

        die(json_encode($array));
    }

    /**
     * Склады Новой Почты
     */
    public function getNovaPoshtaWarehousesAction()
    {
        $city = Arr::get($this->post, 'city');
        $language = Arr::get($this->post, 'language');

        $warehouses = NovaPoshta::getWarehousesList($city, null, $language);

        $html = '';

        foreach ($warehouses as $key => $value) {
            $html .= '<option value="' . $key . '">' . $value . '</option>';
        }

        $this->success(['html' => $html]);
    }
}