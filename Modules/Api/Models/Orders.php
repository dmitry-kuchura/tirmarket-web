<?php

namespace Modules\Api\Models;

use Exception;
use Core\QB\DB;
use Core\CommonI18n;

class Orders extends CommonI18n
{
    public static $table = 'orders';
    public static $tableItems = 'orders_items';

    /**
     * Проверка на существование по ID
     *
     * @param $obj
     * @return bool
     */
    public static function check($obj)
    {
        $check = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->id)->find();

        if (count($check)) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * Импорт заказов из 1С
     *
     * @param $obj
     * @return bool
     * @throws Exception
     */
    public static function insertRows($obj)
    {
        $user = self::getUser($obj->userID);

        $data = [];
        $data['import_id'] = $obj->id;
        $data['code_1c'] = $obj->code1C;
        $data['contract'] = $obj->contract;
        $data['user_id'] = $user->id;
        $data['email'] = $user->email;
        $data['done'] = strtotime($obj->date);
        $data['created_at'] = strtotime($obj->date);
        $data['updated_at'] = time();

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        $result = DB::insert(static::$table, $keys)->values($values)->execute();
        $lastID = $result[0];

        try {
            self::insertItems($obj->products, $lastID);
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        return true;
    }

    /**
     * Получение ID пользователя
     *
     * @param $importID
     * @return mixed
     */
    static function getUser($importID)
    {
        $user = DB::select()->from('users')->where('import_id', 'LIKE', $importID)->find();

        return $user;
    }

    /**
     * @param $itemID
     * @return null
     */
    static function findItem($itemID)
    {
        $item = DB::select()->from('catalog_backup')->where('import_id', 'LIKE', $itemID)->find();

        return $item ? $item->id : null;
    }

    /**
     * Сохранение товаров
     *
     * @param $items
     * @param $order
     * @return bool
     */
    static function insertItems($items, $order)
    {
        if (is_array($items)) {
            foreach ($items as $obj) {
                $catalog = self::findItem($obj->productID);
                if ($catalog) {
                    $model = [];

                    $model['order_id'] = $order;
                    $model['catalog_id'] = $catalog;
                    $model['cost'] = $obj->price;
                    $model['count'] = $obj->count;

                    $keys = [];
                    $values = [];
                    foreach ($model as $key => $value) {
                        $keys[] = $key;
                        $values[] = $value;
                    }

                    DB::insert(static::$tableItems, $keys)->values($values)->execute();
                }
            }
        } else {
            $catalog = self::findItem($items->productID);
            if ($catalog) {
                $model = [];

                $model['order_id'] = $order;
                $model['catalog_id'] = $catalog;
                $model['cost'] = $items->price;
                $model['count'] = $items->count;

                $keys = [];
                $values = [];
                foreach ($model as $key => $value) {
                    $keys[] = $key;
                    $values[] = $value;
                }

                DB::insert(static::$tableItems, $keys)->values($values)->execute();
            }
        }

        return true;
    }
}