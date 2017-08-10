<?php

namespace Modules\Ajax\Controllers;

use Core\Arr;
use Core\CommonI18n;
use Core\HTML;
use Core\QB\DB;
use Core\Route;
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
        $post = json_decode(file_get_contents('php://input'), true);
        $lang = Arr::get($post, 'lang');
        I18n::$lang = $lang;

        $query = Arr::get($post, 'search');

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
            ]
        ];

        foreach ($result as $obj) {
            $data['result'][] = [
                'id' => $obj->id,
                'link' => HTML::link($obj->link . '/p' . $obj->id, false),
                'image' => is_file(HOST . HTML::media('images/catalog/search/' . $obj->image, false)) ? HTML::media('images/catalog/search/' . $obj->image, false) : HTML::media('pic/no-image.png', false),
                'price' => $obj->cost,
                'title' => $obj->name,
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
                'price' => (int)$obj->cost . ' грн.',
                'maxcount' => 50,
            ];
        }

        $this->answer([
            'success' => true,
            'list' => $list,
            'totalCount' => $total_quantity,
            'totalPrice' => $total_price
        ]);
    }

    /**
     * Основной обработчки корзины
     */
    public function addToCartAction()
    {
        $action = json_decode(file_get_contents('php://input'), true);

        switch ($action['action']) {
            case 'decrement':
                $this->decrementItemAction($action['id']);
                break;
            case 'increment':
                $this->incrementAction($action['id']);
                break;
            case 'remove':
                $this->deleteItemAction($action['id']);
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
        $product = Arr::get($this->post, 'product');
        if (!$product) {
            $this->error(__('Опаньки, а товара то нет!'));
        }

        $user = Arr::get($this->post, 'user');
        if (!$user) {
            if (isset($_SESSION['user_favorites'])) {
                $ghost_id = $_SESSION['user_favorites'];
            } else {
                $ghost_id = $_SESSION['user_favorites'] = md5(time());
            }
        } else {
            unset($_SESSION['user_favorites']);
        }

        $check = DB::select()
            ->from('users_favorites')
            ->where('user_id', '=', $user)
            ->or_where('ghost_id', '=', $ghost_id)
            ->and_where('product_id', '=', $product)
            ->find();
        if (is_object($check) && $check->id) {
            DB::delete('users_favorites')->where('id', '=', $check->id)->execute();
        } else {
            $model = [];

            $model['user_id'] = $user;
            $model['product_id'] = $product;
            $model['created_at'] = time();
            $model['ghost_id'] = $_SESSION['user_favorites'];

            $keys = [];
            $values = [];

            foreach ($model as $key => $value) {
                $keys[] = $key;
                $values[] = $value;
            }

            DB::insert('users_favorites', $keys)->values($values)->execute();
        }

        $this->success(__('Товар добавлен в избаное!'));
    }

    /**
     * Товары аналоги
     */
    public function analogueAction()
    {
        $refer = explode('/p', $_SERVER["HTTP_REFERER"]);
        $refer = $refer[1];

        $table = 'catalog';
        $tableI18n = $table . '_i18n';
        $array = [];

        $result = DB::select(
            $tableI18n . '.*',
            $table . '.*',
            ['brands_i18n.name', 'brand_name']
        )
            ->from($table)
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->join($table . '_related')
            ->on($table . '_related.with_id', '=', $table . '.id')
            ->join('brands', 'LEFT')
            ->on($table . '.brand_alias', '=', 'brands.alias')
            ->on('brands.status', '=', DB::expr('1'))
            ->join('brands_i18n', 'LEFT')
            ->on('brands_i18n.row_id', '=', 'brands.id')
            ->on('brands_i18n.language', '=', DB::expr("'" . \I18n::$lang . "'"))
            ->where($table . '_related.who_id', '=', $refer)
            ->where($tableI18n . '.language', '=', I18n::$lang)
            ->where($table . '.status', '=', 1)
            ->order_by(DB::expr('RAND ()'))
            ->limit(5)
            ->find_all();

        foreach ($result as $obj) {
            $array[] = [
                'id' => $obj->id,
                'link' => HTML::link($obj->alias . '/p' . $obj->id, false),
                'title' => $obj->name,
                'image' => is_file(HOST . HTML::media('images/catalog/medium/' . $obj->image, false)) ? HTML::media('images/catalog/medium/' . $obj->image, false) : HTML::media('pic/no-image.png', false),
                'code' => $obj->artikul,
                'number' => $obj->number ? $obj->number : '------',
                'maker' => [
                    'title' => $obj->brand_name,
                    'link' => HTML::link('brands/' . $obj->brand_alias, false)
                ],
                'price' => $obj->cost . ' грн.',
                'exist' => $obj->availeble == 1 ? true : false,
                'exist-string' => $obj->availeble == 1 ? __('В наличии') : __('Нет в наличии'),
                'new' => $obj->new == 1 ? true : false,
                'promo' => $obj->top == 1 ? true : false,
                'popular' => $obj->sale == 1 ? true : false
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

        foreach ($catalog as $obj) {
            $tree[$obj->parent_id][] = $obj;
        }

        foreach ($tree[0] as $obj) {

            if (isset($tree[$obj->id])) {
                foreach ($tree[$obj->id] as $child) {
                    $children[] = [
                        'link' => HTML::link($child->alias, false),
                        'alias' => $child->name,
                        'children' => false,
                    ];
                }
            }

            $category[] = [
                'link' => HTML::link($obj->alias, false),
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

        die(json_encode($result));
    }

    /**
     * Результаты поиска
     */
    public function resultAction()
    {
        $post = json_decode(file_get_contents('php://input'), true);

        $lang = Arr::get($post, 'lang');
        I18n::$lang = $lang;

        $queries = Items::getQueries(urldecode($post['query']));
        $result = Items::searchRows($queries);

        $array = [];

        $array = [
            'static' => [
                'buy' => __('В корзину'),
                'order' => __('Заказать'),
                'orderLink' => HTML::link('hidden/order', false)
            ]
        ];

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
                    'link' => HTML::link('brands/' . $obj->brand_alias, false)
                ],
                'price' => $obj->cost . ' грн.',
                'exist' => $obj->available == 1 ? true : false,
                'exist-string' => $obj->available == 1 ? __('В наличии') : __('Нет в наличии'),
                'new' => $obj->new == 1 ? true : false,
                'promo' => $obj->top == 1 ? true : false,
                'popular' => $obj->sale == 1 ? true : false

            ];
        }

        die(json_encode($array));
    }
}