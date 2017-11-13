<?php

namespace Modules\Api\Models;

use Core\QB\DB;
use Core\Common;
use Core\Text;

class Currencies extends Common
{
    public static $table = 'currencies';

    /**
     * Проверка на существование по ID
     *
     * @param $obj
     * @return bool
     */
    public static function check($obj)
    {
        $check = DB::select()->from(static::$table)->where('import_id', '=', $obj->id)->find();

        if (count($check)) {
            return false;
        } else {
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
        $data['status'] = 1;
        $data['name'] = $obj->name;
        $data['exchange'] = $obj->exchange;
        $data['import_id'] = $obj->id;
        $data['created_at'] = time();
        $data['updated_at'] = time();

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::insert(static::$table, $keys)->values($values)->execute();
    }

    /**
     * Обновление из 1C
     *
     * @param $obj
     */
    public static function updateRows($obj)
    {
        $data = [];
        $data['name'] = $obj->name;
        $data['exchange'] = $obj->exchange;
        $data['import_id'] = $obj->id;
        $data['updated_at'] = time();

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::update(static::$table)->set($data)->where('import_id', '=', $obj->id)->execute();
    }
}