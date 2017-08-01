<?php

namespace Modules\Ajax\Controllers;

use Core\Arr;
use Core\Common;
use Core\Message;
use Modules\Cart\Models\Cart;
use Core\HTML;
use Modules\Ajax;
use Modules\Catalog\Models\Items;

class General extends Ajax
{

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

    public function deleteItemAction($id)
    {
        if (!$id) {
            $this->error('No such item!');
        }

        Cart::factory()->delete($id);

        $this->showCartAction();
    }

}