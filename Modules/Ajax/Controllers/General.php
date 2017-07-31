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
        var_dump($_POST);
        die;
        $query = Arr::get($_GET, 'query');
        if (!$query) {
            return $this->_content = $this->noResults();
        }
        $queries = Items::getQueries($query);
        // Get items list
        $result = Items::searchRows($queries, $this->_limit, $this->_offset);


        $data = [
            0 => [
                "id" => "1",
                "link" => "#",
                "image" => "pic/search-1.png",
                "price" => "100 530",
                "title" => "Моторное масло Total Quartz INEO MC3 5W-30 5 л (9106) "
            ],
            1 => [
                "id" => "2",
                "link" => "#",
                "image" => "pic/search-1.png",
                "price" => "100 530",
                "disable-price" => "2 530",
                "title" => "Тормозная система"
            ],
            2 => [
                "id" => "3",
                "link" => "#",
                "image" => "pic/search-1.png",
                "price" => "100 530",
                "disable-price" => "4 530",
                "title" => "Моторное масло Castrol Magnatec Diesel 5W-40 DPF 1 л "
            ],
            3 => [
                "id" => "4",
                "link" => "#",
                "image" => "pic/search-1.png",
                "price" => "100 530",
                "title" => "Моторное масло Total Quartz INEO MC3 5W-30 5 л (9106) "
            ],
            4 => [
                "id" => "5",
                "link" => "#",
                "image" => "pic/search-1.png",
                "price" => "100 530",
                "disable-price" => "7 530",
                "title" => "Тормозная система"
            ],
            5 => [
                "id" => "6",
                "link" => "#",
                "image" => "pic/search-1.png",
                "price" => "100 530",
                "title" => "Моторное масло Castrol Magnatec Diesel 5W-40 DPF 1 л"
            ]
        ];

        $rand_keys = array_rand($data, rand(2, 5));

        $result = [];

        foreach ($rand_keys as $key => $value) {
            array_push($result, $data[$value]);
        }

        die(json_encode($result));
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