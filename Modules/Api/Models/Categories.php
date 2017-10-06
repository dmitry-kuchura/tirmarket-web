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
        $check = DB::select()->from(static::$table)->where('id', '=', $obj->id)->find();

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

        $data['id'] = $obj->id;
        $data['alias'] = self::unique($obj->name);
        $data['sort'] = $obj->position;
        $data['status'] = $obj->status;
        $data['image'] = $obj->image;
        $data['top_menu'] = $obj->inMainPage;
        $data['popular'] = $obj->id;
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

        $i18n = [];

        $i18n['name'] = $obj->name;
        $i18n['language'] = 'ua';
        $i18n['row_id'] = $obj->id;

        $keys = [];
        $values = [];
        foreach ($i18n as $key => $value) {
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