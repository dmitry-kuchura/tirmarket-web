<?php

namespace Modules\Cart\Models;

use Core\QB\DB;
use Core\Common;
use Core\SOAP;
use Core\User;
use Modules\Api\Models\Orders as Order;

class Orders extends Common
{

    public static $table = 'orders';

    public static function getUserOrdersItems($user_id)
    {
        $items = DB::select(
            'catalog.id',
            'orders_items.order_id',
            'catalog.alias',
            'catalog_i18n.name',
            'catalog.parent_id',
            'catalog.image',
            'orders_items.count',
            ['orders_items.cost', 'price']
        )
            ->from('orders_items')
            ->join('orders', 'LEFT')->on('orders.id', '=', 'orders_items.order_id')
            ->join('catalog', 'LEFT')->on('orders_items.catalog_id', '=', 'catalog.id')
            ->join('catalog_i18n', 'LEFT')->on('catalog_i18n.row_id', '=', 'catalog.id')
            ->where('catalog_i18n.language', '=', \I18n::$lang)
            ->where('orders.user_id', '=', $user_id)->find_all();

        $order_items = [];
        foreach ($items as $item) {
            $order_items[$item->order_id][] = $item;
        }
        return $order_items;
    }

    public static function getUserOrders($user_id)
    {
        $orders = DB::select(static::$table . '.*', [DB::expr('SUM(orders_items.cost * orders_items.count)'), 'amount'])
            ->from(static::$table)
            ->join('orders_items', 'LEFT')->on('orders_items.order_id', '=', static::$table . '.id')
            ->where(static::$table . '.user_id', '=', $user_id)
            ->group_by(static::$table . '.id')
            ->order_by(static::$table . '.created_at', 'DESC');
        return $orders->find_all();
    }


    public static function getOrder($order_id)
    {
        $result = DB::select(
            static::$table . '.*',
            [DB::expr('SUM(orders_items.cost * orders_items.count)'), 'amount'],
            [DB::expr('SUM(orders_items.count)'), 'count']
        )
            ->from(static::$table)
            ->join('orders_items', 'LEFT')->on('orders_items.order_id', '=', static::$table . '.id')
            ->where(static::$table . '.id', '=', $order_id);
        return $result->find();
    }

    public static function putOrders()
    {
        $result = DB::select()->from('orders')->where('import_id', 'IS', null)->find_all();

        foreach ($result as $obj) {
            $items = Order::itemsToArray($obj->id);
            $user = User::infoById($obj->user_id);

            if ($user->import_id) {
                $params['data'] = [
                    'date' => date('Y-m-d', $obj->created_at),
                    'userID' => $user->import_id,
                    'clientID' => $user->client_id,
                    'currencyID' => $user->currency_id,
                    'contractID' => $user->contract,
                    'products' => $items,
                ];

                $orderID = SOAP::sendOrders($params);
                if ($orderID) {
                    DB::update('orders')->set(['import_id' => $orderID, 'changed' => 2])->where('id', '=', $obj->id)->execute();
                }
            }
        }
    }

    public static function getOrderItems($order_id)
    {
        $items = DB::select('catalog.alias', 'catalog.id', 'catalog_i18n.name', 'catalog.image', 'orders_items.count', ['orders_items.cost', 'price'])
            ->from('orders_items')
            ->join('catalog', 'LEFT')->on('orders_items.catalog_id', '=', 'catalog.id')
            ->join('catalog_i18n')->on('catalog.id', '=', 'catalog_i18n.row_id')
            ->where('catalog_i18n.language', '=', \I18n::$default_lang)
            ->where('orders_items.order_id', '=', $order_id);
        return $items->find_all();
    }

}