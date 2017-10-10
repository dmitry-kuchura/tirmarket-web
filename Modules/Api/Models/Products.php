<?php

namespace Modules\Api\Models;

use Core\Text;
use Core\QB\DB;
use Core\CommonI18n;

class Products extends CommonI18n
{
    public static $table = 'catalog';
    public static $tableI18n = 'catalog_i18n';

    /**
     * Проверка на существование товара по ID
     *
     * @param $obj
     * @return bool
     */
    public static function checkItem($obj)
    {
        $check = DB::select()->from(static::$table)->where('id', '=', $obj->id)->find();

        if (count($check)) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * Добавление товаров из 1С
     *
     * @param $obj
     */
    public static function insertRows($obj)
    {
        $data = [];

        $data['id'] = $obj->id;
//        $data['code_1с'] = (int)$obj->code1C;
        $data['alias'] = self::unique(trim($obj->name));
        $data['sort'] = $obj->position;
        $data['status'] = $obj->status;
        $data['artikul'] = trim($obj->article);
        $data['parent_id'] = $obj->parentID;
        $data['created_at'] = time();
        $data['updated_at'] = time();

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::insert(static::$table, $keys)->values($values)->execute();

        /* i18n */
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