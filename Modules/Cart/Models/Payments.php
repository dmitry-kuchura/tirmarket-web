<?php

namespace Modules\Cart\Models;

use Core\CommonI18n;

class Payments extends CommonI18n
{

    public static $table = 'payments';

    /**
     * Получение списка способов оплаты в виде массива
     *
     * @return array
     */
    public static function getPayments()
    {
        $payments = [];

        $result = CommonI18n::factory(static::$table)->getRows(1, 'sort', 'ASC');

        foreach ($result as $obj) {
            $payments[$obj->id] = $obj->name;
        }

        return $payments;
    }

}