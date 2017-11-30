<?php

namespace Wezom\Modules\Catalog\Models;

use Core\User;
use Core\QB\DB;
use Core\Common;


/**
 * Class Price
 *
 * @property integer $id
 * @property string $name
 * @property string $view
 * @property string $import_id
 * @property integer $exchange
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 *
 * @package Modules\Catalog\Models
 */
class Price extends Common
{
    public static $table = 'currencies';

    /**
     * Валюта заказа
     *
     * @param $currencies_id
     * @return string
     */
    public static function getCurrency($currencies_id)
    {
        if ($currencies_id) {
            /* @var $currency Price */
            $currency = DB::select()->from(static::$table)->where('status', '=', 1)->and_where('import_id', 'LIKE', $currencies_id)->find();

            return $currency->view;
        } else {
            return 'грн.';
        }
    }

    /**
     * Персесчет
     *
     * @param $currencies_id
     * @param $price
     * @return string
     */
    public static function getCurrencies($currencies_id, $price)
    {
        /* @var $currency Price */
        $currency = DB::select()->from(static::$table)->where('status', '=', 1)->and_where('import_id', 'LIKE', $currencies_id)->find();

        if ($currency) {
            if ($currency->exchange > 0) {
                return number_format($price * $currency->exchange, 2, '.', '');
            } else {
                return number_format($price / $currency->exchange, 2, '.', '');
            }
        } else {
            return number_format($price, 2, '.', '');
        }
    }

}