<?php

namespace Modules\Api\Models;

use Exception;
use Core\QB\DB;
use Core\CommonI18n;

class Models extends CommonI18n
{
    public static $table = 'models';
    public static $tableI18n = 'models_i18n';

    /**
     * Проверка на существование модели по ID
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
     * Добавление из 1С
     *
     * @param $obj
     * @throws Exception
     */
    public static function insertRows($obj)
    {
        try {
            $data = [];

            $data['import_id'] = $obj->id;
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
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }
    }

    /**
     * Обновление из 1С
     *
     * @param $obj
     * @throws Exception
     */
    public static function updateRows($obj)
    {
        try {
            $data = [];
            $data['import_id'] = $obj->id;
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
            $ua['name'] = trim($obj->name);

            DB::update(static::$tableI18n)->set($ua)->where('row_id', '=', $itemID->id)->where('language', '=', 'ua')->execute();

            $ru = [];
            $ru['name'] = trim($obj->name);

            DB::update(static::$tableI18n)->set($ru)->where('row_id', '=', $itemID->id)->where('language', '=', 'ru')->execute();
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }
    }
}