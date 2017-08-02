<?php

namespace Modules\Ajax\Controllers;

use Core\Arr;
use Core\HTML;
use Core\QB\DB;
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
        $query = Arr::get($post, 'search');
        if (!$query) {
            return false;
        }
        $queries = Items::getQueries($query);

        $result = Items::searchRows($queries, $this->_limit, $this->_offset);

        $data = [];

        foreach ($result as $key => $obj) {
            $data[$key]['id'] = $obj->id;
            $data[$key]['link'] = HTML::link($obj->link . '/p' . $obj->id, false);
            $data[$key]['image'] = HTML::media('images/catalog/search/' . $obj->image, false);
            $data[$key]['price'] = $obj->price;
            $data[$key]['title'] = $obj->title;
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
                'image' => is_file(HOST . HTML::media('images/catalog/medium/' . $obj->image, false)) ? HTML::media('images/catalog/medium/' . $obj->image, false) : 'http://' . $_SERVER['HTTP_HOST'] . HTML::media('pic/no-photo.png'),
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

}