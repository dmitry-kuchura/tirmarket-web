<?php

namespace Modules\Api\Models;

use Core\Text;
use Core\QB\DB;
use Core\CommonI18n;

class Price extends CommonI18n
{
    public static $table = 'price_types';
    public static $tableI18n = 'price_types_i18n';

    /**
     * Проверка на существование товара по ID
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

    public static function checkItem($obj)
    {
        $check = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->productID)->find();

        if (count($check)) {
            return true;
        }
    }

    /**
     * Добавление из 1С
     *
     * @param $obj
     */
    public static function insertRows($obj)
    {
        $data = [];
        $data['import_id'] = $obj->id;
        $data['discount'] = $obj->discount;
        $data['status'] = 1;
        $data['created_at'] = time();
        $data['updated_at'] = time();

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        $result = DB::insert(static::$table, $keys)->values($values)->execute();
        $lastID = $result[0];

        /**
         * i18n
         */
        $ua = [];
        $ua['name'] = $obj->name;
        $ua['language'] = 'ua';
        $ua['row_id'] = $lastID;

        $keys = [];
        $values = [];
        foreach ($ua as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::insert(static::$tableI18n, $keys)->values($values)->execute();

        $ru = [];
        $ru['name'] = $obj->name;
        $ru['language'] = 'ru';
        $ru['row_id'] = $lastID;

        $keys = [];
        $values = [];
        foreach ($ru as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::insert(static::$tableI18n, $keys)->values($values)->execute();
    }

    /**
     * Обновление из 1С
     *
     * @param $obj
     */
    public static function updateRows($obj)
    {
        $data = [];
        $data['discount'] = $obj->discount;
        $data['status'] = 1;
        $data['created_at'] = time();
        $data['updated_at'] = time();

        DB::update(static::$table)->set($data)->where('import_id', '=', $obj->id)->execute();
        $itemID = DB::select('id')->from(static::$table)->where('import_id', '=', $obj->id)->find();

        /* i18n */
        $ua = [];
        $ua['name'] = $obj->name;

        DB::update(static::$tableI18n)->set($ua)->where('row_id', '=', $itemID->id)->where('language', '=', 'ua')->execute();

        $ru = [];
        $ru['name'] = $obj->name;

        DB::update(static::$tableI18n)->set($ru)->where('row_id', '=', $itemID->id)->where('language', '=', 'ru')->execute();
    }

    public static function updatePrice($obj)
    {
        DB::update('catalog')->set(['cost' => $obj->price, 'updated_at' => time()])->where('import_id', 'LIKE', $obj->productID)->execute();
    }
}