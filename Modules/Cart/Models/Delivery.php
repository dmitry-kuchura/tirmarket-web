<?php

namespace Modules\Cart\Models;

use Core\CommonI18n;

class Delivery extends CommonI18n
{

    public static $table = 'delivery';

    /**
     * Получения списка доставок в виде массива
     *
     * @return array
     */
    public static function getDelivery()
    {
        $delivery = [];

        $result = CommonI18n::factory(static::$table)->getRows(1, 'sort', 'ASC');

        foreach ($result as $obj) {
            $delivery[$obj->id] = $obj->name;
        }

        return $delivery;
    }

}