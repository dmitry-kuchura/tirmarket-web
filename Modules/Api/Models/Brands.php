<?php

namespace Modules\Api\Models;

use Core\QB\DB;
use Core\CommonI18n;
use Core\Text;

class Brands extends CommonI18n
{
    public static $table = 'brands';
    public static $tableI18n = 'brands_i18n';

    /**
     * Проверка на существование категории по ID
     *
     * @param $obj
     * @return bool
     */
    public static function checkBrand($obj)
    {
        $check = DB::select()->from(static::$table)->where('id', '=', $obj->id)->find();

        if (count($check)) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * Добавление производителей из 1С
     *
     * @param $obj
     */
    public static function insertRows($obj)
    {
        $data = [];

        $data['id'] = $obj->id;
        $data['alias'] = self::unique($obj->name);
        $data['sort'] = $obj->position;
        $data['status'] = $obj->status;
        $data['created_at'] = time();
        $data['updated_at'] = time();

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::insert(static::$table, $keys)->values($values)->execute();

        $ua = [];

        $ua['name'] = $obj->name;
        $ua['language'] = 'ua';
        $ua['row_id'] = $obj->id;

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
        $ru['row_id'] = $obj->id;

        $keys = [];
        $values = [];
        foreach ($ru as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::insert(static::$tableI18n, $keys)->values($values)->execute();
    }

    /**
     * Проверка на уникальный alias
     *
     * @param $value
     * @return mixed|string
     */
    public static function unique($value)
    {
        $value = Text::translit($value);
        $count = DB::select([DB::expr('COUNT(id)'), 'count'])
            ->from('catalog_tree')
            ->where('alias', '=', $value);
        $count = $count->count_all();
        if ($count) {
            return $value . rand(1000, 9999);
        }
        return $value;
    }
}