<?php

namespace Modules\Api\Models;

use Core\Arr;
use Core\Email;
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
        $password = User::generate_random_password();
        $data = [];

        $data['import_id'] = $obj->id;
        $data['name'] = $obj->name;
        $data['email'] = $obj->email;
        $data['contract'] = $obj->contractID;
        $data['currency_id'] = $obj->currencyID;
        $data['created_at'] = time();
        $data['updated_at'] = time();
        $data['password'] = $password;

        $make = User::factory()->registration($data);

        if ($make) {
            Email::sendTemplate(13, [
                '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
                '{{ip}}' => Arr::get($data, 'ip'),
                '{{date}}' => date('d.m.Y'),
                '{{email}}' => $obj->email,
                '{{password}}' => $password,
                '{{name}}' => $obj->name,
            ], $obj->email);
        }

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