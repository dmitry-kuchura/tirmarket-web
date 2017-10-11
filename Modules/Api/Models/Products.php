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
        $check = DB::select()->from(static::$table)->where('import_id', '=', $obj->id)->find();

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

        $data['import_id'] = $obj->id;
        $data['code_1с'] = $obj->code1C;
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

        $result = DB::insert(static::$table, $keys)->values($values)->execute();
        $lastID = $result[0];

        /* i18n */
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

    public static function updateRows($obj)
    {
        $data = [];
        $data['code_1с'] = $obj->code1C;
        $data['alias'] = self::unique(trim($obj->name));
        $data['sort'] = $obj->position;
        $data['status'] = $obj->status;
        $data['artikul'] = trim($obj->article);
        $data['parent_id'] = $obj->parentID;
        $data['created_at'] = time();
        $data['updated_at'] = time();

        DB::update(static::$table)->set($data)->where('import_id', '=', $obj->id)->execute();
        $itemID = DB::select('id')->from(static::$table)->where('import_id', '=', $obj->id)->find();

        /* i18n */
        $ua = [];
        $ua['name'] = $obj->name;
        $ua['language'] = 'ua';

        DB::update(static::$table)->set($ua)->where('row_id', '=', $itemID->id)->execute();

        $ru = [];
        $ru['name'] = $obj->name;
        $ru['language'] = 'ru';
        $ru['row_id'] = $itemID->id;

        DB::update(static::$table)->set($ru)->where('row_id', '=', $itemID->id)->execute();
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
            ->from('catalog')
            ->where('alias', '=', $value);
        $count = $count->count_all();
        if ($count) {
            return $value . rand(1000, 9999);
        }
        return $value;
    }
}