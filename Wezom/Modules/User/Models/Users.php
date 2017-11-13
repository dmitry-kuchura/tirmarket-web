<?php

namespace Wezom\Modules\User\Models;

use Core\Config;
use Core\Arr;
use Core\Message;
use Core\QB\DB;
use Core\Route;
use Core\Common;

class Users extends Common
{
    public static $table = 'users';
    public static $filters = [
        'name' => [
            'table' => null,
            'action' => 'LIKE',
        ],
        'email' => [
            'table' => null,
            'action' => 'LIKE',
        ],
        'phone' => [
            'table' => null,
            'action' => 'LIKE',
        ],
    ];
    public static $rules = [];

    public static function valid($data = [])
    {
        static::$rules = [
            'name' => [
                [
                    'error' => __('Имя не может быть пустым!'),
                    'key' => 'not_empty',
                ],
            ],
            'email' => [
                [
                    'error' => __('Поле "E-Mail" введено некорректно!'),
                    'key' => 'email',
                ],
            ],
        ];
        if (Route::param('id')) {
            if (DB::select([DB::expr('COUNT(id)'), 'count'])->from('users')->where('email', '=', Arr::get($data, 'email'))->where('id', '!=', Route::param('id'))->count_all()) {
                Message::GetMessage(0, __('Указанный E-Mail уже занят!'));
                return false;
            }
        } else {
            if (DB::select([DB::expr('COUNT(id)'), 'count'])->from('users')->where('email', '=', Arr::get($data, 'email'))->count_all()) {
                Message::GetMessage(0, __('Указанный E-Mail уже занят!'));
                return false;
            }
        }
        if (Arr::get($_POST, 'password') || !Route::param('id')) {
            if (mb_strlen(Arr::get($_POST, 'password'), 'UTF-8') < Config::get('main.password_min_length')) {
                Message::GetMessage(0, __('Пароль должен быть не короче N символов!', [':count' => Config::get('main.password_min_length')]));
                return false;
            }
        }
        return parent::valid($data);
    }

    public static function getForOrder($id)
    {
        $user = DB::select(
            'users.*',
            [DB::expr('COUNT(DISTINCT orders.id)'), 'orders'],
            [DB::expr('SUM(orders_items.cost * orders_items.count)'), 'amount'],
            [DB::expr('SUM(orders_items.count)'), 'count_items']
        )
            ->from('users')
            ->join('orders')->on('orders.user_id', '=', 'users.id')
            ->join('orders_items')->on('orders_items.order_id', '=', 'orders.id')
            ->where('users.id', '=', $id)
            ->where('orders.status', '=', 1);
        return $user->find();
    }

    public static function getRows($status = null, $sort = null, $type = null, $limit = null, $offset = null, $filter = true)
    {
        $result = DB::select()->from(static::$table)->where('role_id', '=', 1);
        $result = parent::setFilter($result);
        if ($status !== null) {
            $result->where(static::$table . '.status', '=', $status);
        }
        if ($sort !== null) {
            if ($type !== null) {
                $result->order_by($sort, $type);
            } else {
                $result->order_by($sort);
            }
        }
        if ($limit !== null) {
            $result->limit($limit);
            if ($offset !== null) {
                $result->offset($offset);
            }
        }
        return $result->find_all();
    }

    public static function countRows($status = null, $filter = true)
    {
        $result = DB::select([DB::expr('COUNT(' . static::$table . '.id)'), 'count'])->from(static::$table)->where('role_id', '=', 1);
        $result = parent::setFilter($result);
        if ($status !== null) {
            $result->where(static::$table . '.status', '=', $status);
        }
        return $result->count_all();
    }

    /**
     * @return array
     */
    public static function getCurrencies()
    {
        $result = DB::select()->from('currencies')->where('status', '=', 1)->find_all();

        $arr = [];

        foreach ($result as $obj) {
            $arr[$obj->import_id] = $obj->name;
        }

        return $arr;
    }

    /**
     * getAmountGoodOrders
     *
     * @param $id
     * @return int
     */
    public static function getAmountGoodOrders($id)
    {
        $amount = (int)DB::select([DB::expr('SUM(orders_items.count * orders_items.cost)'), 'amount'])
            ->from('orders')
            ->join('orders_items')->on('orders_items.order_id', '=', 'orders.id')
            ->where('status', '=', 1)
            ->where('user_id', '=', $id)
            ->find()
            ->amount;

        return $amount;
    }

    /**
     * getCountGoodOrders
     *
     * @param $id
     * @return int
     */
    public static function getCountGoodOrders($id)
    {
        $count = (int)DB::select([DB::expr('COUNT(id)'), 'count'])->from('orders')->where('status', '=', 1)->where('user_id', '=', $id)->count_all();

        return $count;
    }

    /**
     * getCountOrders
     *
     * @param $id
     * @return int
     */
    public static function getCountOrders($id)
    {
        $count = (int)DB::select([DB::expr('COUNT(id)'), 'count'])->from('orders')->where('user_id', '=', $id)->count_all();

        return $count;
    }

    /**
     * getSocials
     *
     * @param $id
     * @return object
     */
    public static function getSocials($id)
    {
        $socials = DB::select()->from('users_networks')->where('user_id', '=', $id)->find_all();

        return $socials;
    }
}