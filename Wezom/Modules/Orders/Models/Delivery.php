<?php

namespace Wezom\Modules\Orders\Models;

use Core\CommonI18n;

class Delivery extends CommonI18n
{

    public static $table = 'delivery';
    public static $image = 'delivery';
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