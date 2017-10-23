<?php

namespace Modules\Api\Models;

use Core\QB\DB;
use Core\CommonI18n;
use Core\Text;
use Core\User;

class Users extends CommonI18n
{
    public static $table = 'users';

    /**
     * Проверка на существование по ID
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
     */
    public static function insertRows($obj)
    {
        $data = [];

        $data['import_id'] = $obj->id;
        $data['name'] = $obj->name;
        $data['contract'] = $obj->contract;
        $data['created_at'] = time();
        $data['updated_at'] = time();
        $data['password'] = User::generate_random_password();

        User::factory()->registration($data);
    }

    /**
     * Обновление записей в БД
     *
     * @param $obj
     */
    public static function updateRows($obj)
    {
        $data = [];
        $data['updated_at'] = time();

        DB::update(static::$table)->set($data)->where('import_id', '=', $obj->id)->execute();
    }
}