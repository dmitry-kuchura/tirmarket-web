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
        $parent = DB::select()->from('catalog_tree')->where('import_id', 'LIKE', $obj->parentID)->find();
        $brand = DB::select()->from('brands')->where('id', '=', $obj->brandID)->find();

        $data = [];
        $data['import_id'] = $obj->id;
        $data['code_1с'] = $obj->code1C;
        $data['alias'] = self::unique(trim($obj->name));
        $data['sort'] = $obj->position;
        $data['status'] = $obj->status;
        $data['artikul'] = trim($obj->article);
        $data['parent_id'] = $parent->id;
        $data['brand_alias'] = $brand->alias;
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

        if (isset($obj->analogs->analog)) {
            if (is_array($obj->analogs->analog)) {
                DB::delete('catalog_related')->where('who_id', '=', $lastID)->execute();
                foreach ($obj->analogs->analog as $key => $analog) {
                    $item = DB::select()->from(static::$table)->where('import_id', 'LIKE', $analog)->find()->id;
                    if ($item) {
                        DB::insert('catalog_related', ['who_id', 'with_id'])->values([$lastID, $item])->execute();
                    }
                }
            } else {
                DB::delete('catalog_related')->where('who_id', '=', $lastID)->execute();
                $item = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->analogs->analog)->find()->id;
                if ($item) {
                    DB::insert('catalog_related', ['who_id', 'with_id'])->values([$lastID, $item])->execute();
                }
            }
        }
    }

    /**
     * Обновление товаров из 1С
     *
     * @param $obj
     */
    public static function updateRows($obj)
    {
        $parent = DB::select()->from('catalog_tree')->where('id', '=', $obj->parentID)->find();
        $brand = DB::select()->from('brands')->where('id', '=', $obj->brandID)->find();

        $data = [];
        $data['code_1с'] = $obj->code1C;
        $data['alias'] = self::unique(trim($obj->name));
        $data['sort'] = $obj->position;
        $data['status'] = $obj->status;
        $data['artikul'] = trim($obj->article);
        $data['parent_id'] = $parent->id;
        $data['brand_alias'] = $brand->alias;
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

        if (isset($obj->analogs->analog)) {
            if (is_array($obj->analogs->analog)) {
                DB::delete('catalog_related')->where('who_id', '=', $itemID->id)->execute();

                foreach ($obj->analogs->analog as $key => $analog) {
                    $item = DB::select()->from(static::$table)->where('import_id', 'LIKE', $analog)->find()->id;
                    if ($item) {
                        DB::insert('catalog_related', ['who_id', 'with_id'])->values([$itemID, $item])->execute();
                    }
                }
            } else {
                DB::delete('catalog_related')->where('who_id', '=', $itemID->id)->execute();
                $item = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->analogs->analog)->find()->id;
                if ($item) {
                    DB::insert('catalog_related', ['who_id', 'with_id'])->values([$itemID, $item])->execute();
                }
            }
        }
    }

    /**
     * Проверка на уникальный alias
     *
     * @param $value
     * @return mixed|string
     */
    public
    static function unique($value)
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