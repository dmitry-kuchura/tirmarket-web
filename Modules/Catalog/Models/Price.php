<?php

namespace Modules\Catalog\Models;

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
     * Конвертация суммы в нужной валюте
     *
     * @param $price
     * @return mixed
     */
    public static function getCurrentPrice($price)
    {
        /* @var $user User */
        $user = User::info();

        if ($user->currency_id) {
            return self::getCurrencies($user->currency_id, $price);
        }
    }

    /**
     * Конвертация суммы для корзины
     *
     * @param $price
     * @return mixed
     */
    public static function getCurrencyForCart($price)
    {
        /* @var $user User */
        $user = User::info();

        var_dump($user);
        die;

        if ($user != null && $user->currency_id) {
            return self::getCurrency($user->currency_id, $price);
        } else {
            return $price . ' грн.';
        }
    }

    public static function getCurrentCurrency()
    {
        $user = User::info();

        if ($user->currency_id) {
            $currency = DB::select()->from(static::$table)->where('status', '=', 1)->and_where('import_id', 'LIKE', $user->currency_id)->find();

            return $currency->view;
        } else {
            return 'грн.';
        }
    }

    /**
     * Персесчет
     *
     * @param $currencies
     * @param $price
     * @return mixed
     */
    public static function getCurrencies($currencies, $price)
    {
        /* @var $currency Price */
        $currency = DB::select()->from(static::$table)->where('status', '=', 1)->and_where('import_id', 'LIKE', $currencies)->find();

        if ($currency) {
            $cost = $price * $currency->exchange;
            $cost = number_format($cost, 2, ',', ' ');
            return $cost . ' ' . $currency->view;
        } else {
            return $price . ' грн.';
        }
    }

    public static function getCurrency($currencies, $price)
    {
        /* @var $currency Price */
        $currency = DB::select()->from(static::$table)->where('status', '=', 1)->and_where('import_id', 'LIKE', $currencies)->find();

        if ($currency) {
            return $cost = $price * $currency->exchange;
        } else {
            return $price;
        }
    }
}