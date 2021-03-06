<?php

namespace Modules\Cart\Models;

use Core\Arr;
use Core\Text;
use Core\Cookie;
use Core\Common;
use Core\QB\DB;
use Core\QB\Database;

class Cart
{

    static $_instance;

    public $_cart_id = 0;
    public $_cart = [];
    public $_count_goods = 0;

    function __construct()
    {
        $this->clearCarts();
        $this->set_cart_id();
        $this->check_cart();
        $this->recount();
    }

    static function factory()
    {
        if (self::$_instance == null) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function clearCarts()
    {
        DB::query(Database::DELETE, 'DELETE FROM carts WHERE carts.id NOT IN (SELECT DISTINCT cart_id FROM carts_items) AND created_at < "' . (time() - 24 * 60 * 60) . '"')->execute();
    }

    public function get_list_for_basket()
    {
        $ids = [];
        foreach ($this->_cart AS $key => $item) {
            $ids[] = $item['id'];
        }
        if (!count($ids)) {
            $ids = [0];
        }
        $result = DB::select('catalog.*', 'catalog_i18n.name')
            ->from('catalog')
            ->join('catalog_i18n')->on('catalog.id', '=', 'catalog_i18n.row_id')
            ->join('carts_items', 'LEFT')
            ->on('carts_items.catalog_id', '=', 'catalog.id')
            ->where('carts_items.cart_id', '=', $this->_cart_id)
            ->where('catalog_i18n.language', '=', \I18n::$lang)
            ->where('catalog.status', '=', 1)
            ->where('catalog.id', 'IN', $ids)
            ->find_all();
        $basket = $this->_cart;
        foreach ($result as $obj) {
            $basket[$obj->id]['obj'] = $obj;
        }
        return $basket;
    }

    public function set_cart_id()
    {
        // Check cookie for existance of the cart
        $hash = Cookie::get('cart');
        if (!$hash) {
            return $this->create_cart();
        }
        // Check if our cookie not bad
        $cart = Common::factory('carts')->getRow($hash, 'hash');
        if (!$cart) {
            return $this->create_cart();
        }
        // Set cart_id
        $this->_cart_id = $cart->id;
        return true;
    }

    public function create_cart()
    {
        // Generate hash of new cart for cookie
        $hash = sha1(microtime() . Text::random());
        // Save cart into database
        $this->_cart_id = Common::factory('carts')->insert(['hash' => $hash]);
        // Save cart to cookie
        Cookie::set('cart', $hash, 60 * 60 * 24 * 365);
        return true;
    }

    public function check_cart()
    {
        if (!$this->_cart_id) {
            return false;
        }

        $result = DB::select(['carts_items.catalog_id', 'catalog_id'], ['carts_items.count', 'count'])
            ->from('carts_items')
            ->join('catalog', 'LEFT')->on('catalog.id', '=', 'carts_items.catalog_id')
            ->where('catalog.status', '=', 1)
            ->where('carts_items.cart_id', '=', $this->_cart_id)
            ->order_by('carts_items.id', 'DESC')
            ->find_all();

        foreach ($result as $obj) {
            $this->_cart[$obj->catalog_id] = [
                'id' => $obj->catalog_id,
                'count' => $obj->count,
            ];
        }

        return true;
    }

    public function recount()
    {
        $this->check_cart();
        $count = 0;
        foreach ($this->_cart as $b) {
            $count += (int)$b['count'];
        }
        $this->_count_goods = $count;
    }

    public function get_summa()
    {
        $summa = 0;
        if (empty($this->_cart)) {
            return 0;
        }
        $ids = [];
        foreach ($this->_cart as $b) {
            if (!in_array($b['id'], $ids)) {
                $ids[] = $b['id'];
            }
        }
        $result = DB::select('cost', 'id')->from('catalog')->where('status', '=', 1)->where('id', 'IN', $ids)->find_all();
        $items = [];
        foreach ($result as $obj) {
            $items[$obj->id] = $obj;
        }
        foreach ($this->_cart as $b) {
            $summa += $items[$b['id']]->cost * $b['count'];
        }
        return $summa;
    }

    public function add($catalog_id, $count = 1)
    {
        if (!Arr::get($this->_cart, $catalog_id, false)) {
            $this->_cart[$catalog_id] = [
                'id' => $catalog_id,
                'count' => $count,
            ];
            Common::factory('carts_items')->insert([
                'catalog_id' => $catalog_id,
                'cart_id' => $this->_cart_id,
                'count' => $count,
            ]);
        } else {
            $this->_cart[$catalog_id]['count'] = $this->_cart[$catalog_id]['count'] + $count;
            DB::update('carts_items')
                ->set(['count' => $this->_cart[$catalog_id]['count']])
                ->where('cart_id', '=', $this->_cart_id)
                ->where('catalog_id', '=', $catalog_id)
                ->execute();
        }
        $this->recount();
        return true;
    }

    public function increment($catalog_id, $count)
    {
        if (!Arr::get($this->_cart, $catalog_id, false)) {
            return false;
        }
        $new = $this->_cart[$catalog_id]['count'] + $count;
        DB::update('carts_items')
            ->set(['count' => $new])
            ->where('cart_id', '=', $this->_cart_id)
            ->where('catalog_id', '=', $catalog_id)
            ->execute();
        $this->recount();
        return true;
    }

    public function decrement($catalog_id, $count)
    {
        if (!Arr::get($this->_cart, $catalog_id, false)) {
            return false;
        }
        $new = $this->_cart[$catalog_id]['count'] - $count;
        DB::update('carts_items')
            ->set(['count' => $new])
            ->where('cart_id', '=', $this->_cart_id)
            ->where('catalog_id', '=', $catalog_id)
            ->execute();
        $this->recount();
        return true;
    }

    public function delete($catalog_id)
    {
        if (Arr::get($this->_cart, $catalog_id, false)) {
            unset($this->_cart[$catalog_id]);
            DB::delete('carts_items')
                ->where("catalog_id", "=", $catalog_id)
                ->where("cart_id", "=", $this->_cart_id)
                ->execute();
            $this->recount();
            return true;
        }
        return false;
    }

    public function clear()
    {
        Common::factory('carts')->delete($this->_cart_id);
        $this->_cart_id = 0;
        $this->_cart = [];
        Cookie::delete('cart');
        $this->recount();
    }

}