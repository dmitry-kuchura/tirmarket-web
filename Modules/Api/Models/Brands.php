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
        $check = DB::select()->from(static::$table)
            ->where('import_id', '=', $obj->id)
            ->find();

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

        $data['import_id'] = $obj->id;
        $data['alias'] = self::unique(trim($obj->name));
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

        $result = DB::insert(static::$table, $keys)->values($values)->execute();
        $lastID = $result[0];

        $ua = [];

        $ua['name'] = trim($obj->name);
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

        $ru['name'] = trim($obj->name);
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
        $data['sort'] = $obj->position;
        $data['updated_at'] = time();

        DB::update(static::$table)->set($data)->where('import_id', '=', $obj->id)->execute();
        $itemID = DB::select('id')->from(static::$table)->where('import_id', '=', $obj->id)->find()->id;

        $ua = [];
        $ua['name'] = trim($obj->name);

        DB::update(static::$tableI18n)->set($ua)->where('row_id', '=', $itemID)->where('language', '=', 'ua')->execute();

        $ru = [];
        $ru['name'] = trim($obj->name);

        DB::update(static::$tableI18n)->set($ru)->where('row_id', '=', $itemID)->where('language', '=', 'ru')->execute();
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
            ->from(static::$table)
            ->where('alias', '=', $value);
        $count = $count->count_all();
        if ($count) {
            return $value . rand(10, 999999);
        }
        return $value;
    }

}
