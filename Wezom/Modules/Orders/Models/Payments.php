<?php

namespace Wezom\Modules\Orders\Models;

use Core\CommonI18n;

class Payments extends CommonI18n
{

    public static $table = 'payments';
    public static $image = 'payments';
    public static $rules = [];

    public static function valid($data = [])
    {
        static::$rules = [
            [
                'error' => __('Название не может быть пустым!'),
                'key' => 'not_empty',
            ],
        ];
        return parent::valid($data);
    }

}