<?php

namespace Modules\Api\Models;

use Core\QB\DB;
use Core\CommonI18n;
use Core\Text;

class Categories extends CommonI18n
{
    public static $table = 'catalog_tree';
    public static $tableI18n = 'catalog_tree_i18n';

    /**
     * Проверка на существование категории по ID
     *
     * @param $obj
     * @return bool
     */
    public static function checkCategory($obj)
    {
        $check = DB::select()->from(static::$table)->where('import_id', '=', $obj->id)->find();

        if (count($check)) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * Добавление категорий из 1С
     *
     * @param $obj
     */
    public static function insertRows($obj)
    {
        $data = [];
        $data['import_id'] = $obj->id;
        $data['alias'] = self::unique($obj->name);
        $data['sort'] = $obj->position;
        $data['status'] = $obj->status;
        $data['image'] = $obj->image;
        $data['top_menu'] = $obj->inMainPage;
        $data['popular'] = $obj->popular;
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
     * Обновление категорий из 1C
     *
     * @param $obj
     */
    public static function updateRows($obj)
    {
        if ($obj->parentID) {
            $parent = DB::select()->from(static::$table)->where('import_id', '=', $obj->parentID)->find();
        }

        $data = [];
        $data['import_id'] = $obj->id;
        $data['sort'] = $obj->position;
        $data['status'] = $obj->status;
        $data['image'] = $obj->image;
        $data['top_menu'] = $obj->inMainPage;
        $data['parent_id'] = $parent ? $parent->id : null;
        $data['popular'] = $obj->popular;
        $data['created_at'] = time();
        $data['updated_at'] = time();

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::update(static::$table)->set($data)->where('import_id', '=', $obj->id)->execute();
        $itemID = DB::select('id')->from(static::$table)->where('import_id', '=', $obj->id)->find();


        $ua = [];
        $ua['name'] = $obj->name;
        $ua['language'] = 'ua';

        DB::update(static::$tableI18n)->set($ua)->where('row_id', '=', $itemID->id)->execute();

        $ru = [];
        $ru['name'] = $obj->name;
        $ru['language'] = 'ru';

        DB::update(static::$tableI18n)->set($ua)->where('row_id', '=', $itemID->id)->execute();
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