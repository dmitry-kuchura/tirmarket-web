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

    public function removeConnectionAction()
    {
        $id = Arr::get($_POST, 'id');
        $row = Common::factory('users_networks')->getRow($id);
        if ($row) {
            Common::factory('users_networks')->delete($id);
        }
        Message::GetMessage(1, __('Вы успешно удалили связь Вашего аккаунта и соц. сети!'), 5000);
        $this->success();
    }

    public function addToCartAction()
    {
        // Get and check incoming data
        $catalog_id = Arr::get($this->post, 'id', 0);
        if (!$catalog_id) {
            $this->error('No such item!');
        }
        // Add one item to cart
        Cart::factory()->add($catalog_id);
        $result = Cart::factory()->get_list_for_basket();
        $cart = [];
        foreach ($result as $item) {
            $obj = Arr::get($item, 'obj');
            if ($obj) {
                $cart[] = [
                    'id' => $obj->id,
                    'name' => $obj->name,
                    'cost' => $obj->cost,
                    'image' => is_file(HOST . HTML::media('images/catalog/medium/' . $obj->image, false)) ? HTML::media('images/catalog/medium/' . $obj->image) : '',
                    'alias' => $obj->alias,
                    'count' => Arr::get($item, 'count', 1),
                ];
            }
        }
        $this->success(['cart' => $cart]);
    }

    public function editCartCountItemsAction()
    {
        // Get and check incoming data
        $catalog_id = Arr::get($this->post, 'id', 0);
        if (!$catalog_id) {
            $this->error('No such item!');
        }
        $count = Arr::get($this->post, 'count', 0);
        if (!$count) {
            $this->error('Can\'t change to zero!');
        }
        // Edit count items in cirrent position
        Cart::factory()->edit($catalog_id, $count);
        $this->success(['count' => (int)Cart::factory()->_count_goods]);
    }

    public function deleteItemFromCartAction()
    {
        // Get and check incoming data
        $catalog_id = Arr::get($this->post, 'id', 0);
        if (!$catalog_id) {
            $this->error('No such item!');
        }
        // Add one item to cart
        Cart::factory()->delete($catalog_id);
        $this->success(['count' => (int)Cart::factory()->_count_goods]);
    }

}