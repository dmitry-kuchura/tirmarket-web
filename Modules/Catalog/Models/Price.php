<?php

namespace Modules\Catalog\Models;

use Core\User;
use Core\QB\DB;
use Core\Common;
use Core\Config;

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
class Price extends Common {

    public static $table = 'currencies';

    /**
     * Конвертация суммы в нужной валюте
     *
     * @param $price
     * @return mixed
     */
    public static function getCurrentPrice($price) {
        /* @var $user User */
        $user = User::info();

        if ($user && $user->currency_id) {
            return self::convertPrice($price, $user->currency_id);
        } else {
            if ($price == 0) {
                return __('Не указана');
            }
            if (Config::get('basic.markup') > 0) {
                return self::addPercent(self::convertPrice($price));
            } else {
                return self::convertPrice($price);
            }
        }
    }

    /**
     * Дефолтная валюта гривна
     *
     * USD - 7383a1a6-e50d-11e0-a668-a71a9f00b1d1
     * EUR - 7383a1a7-e50d-11e0-a668-a71a9f00b1d1
     * PLN - 8d106635-3613-11e1-9d1a-1c7ee51fe239
     * UAH - 7383a1a5-e50d-11e0-a668-a71a9f00b1d1
     *
     * @param $price
     * @param string $currencies
     * @return string
     */
    public static function convertPrice($price, $currencies = '7383a1a5-e50d-11e0-a668-a71a9f00b1d1') {
        /* @var $currency Price */
        $currency = DB::select()->from(static::$table)->where('status', '=', 1)->and_where('import_id', 'LIKE', $currencies)->find();

        if ($currency) {
            if ($currency->exchange > 0) {
                $cost = $price * $currency->exchange;
            } else {
                $cost = $price / $currency->exchange;
            }

            if (Config::get('basic.markup') > 0) {
                $cost = self::addPercent($cost);
            }

            return number_format($cost, 2, '.', ' ') . ' ' . $currency->view;
        }
    }

    /**
     * Конвертация суммы для корзины
     *
     * @param $price
     * @return mixed
     */
    public static function getCurrencyForCart($price) {
        /* @var $user User */
        $user = User::info();

        if ($user && $user->currency_id) {
            return self::convertPrice($price, $user->currency_id);
        } else {
            if ($price == 0) {
                return __('Не указана');
            }
            if (Config::get('basic.markup') > 0) {
                return self::addPercent(self::convertPrice($price));
            } else {
                return self::convertPrice($price);
            }
        }
    }

    /**
     * Добавление наценки на цены
     *
     * @param $price
     * @return string
     */
    public static function addPercent($price) {
        // количество процентов
        $percent = Config::get('basic.markup');
        // высчитываем процент от числа
        $percent = $price / 100 * $percent;
        // суммируем число с процентами от этого числа
        $result = $price + $percent;

        // выводим результат
        return number_format($result, 2, '.', '');
    }

    public static function getCostForFilter($price) {
        /* @var $user User */
        $user = User::info();

        if ($user && $user->currency_id) {
            return self::convertPriceForFilter($price, $user->currency_id);
        } else {
            if (Config::get('basic.markup') > 0) {
                return self::addPercent(self::convertPriceForFilter($price));
            } else {
                return self::convertPriceForFilter($price);
            }
        }
    }

    /**
     * Получение текущей валюты
     *
     * @return string
     */
    public static function getCurrentCurrency() {
        /* @var $user User */
        $user = User::info();

        if ($user && $user->currency_id) {
            /* @var $currency Price */
            $currency = DB::select()->from(static::$table)->where('status', '=', 1)->and_where('import_id', 'LIKE', $user->currency_id)->find();

            return $currency->view;
        } else {
            return 'грн.';
        }
    }

    /**
     * Дефолтная валюта гривна
     *
     * USD - 7383a1a6-e50d-11e0-a668-a71a9f00b1d1
     * EUR - 7383a1a7-e50d-11e0-a668-a71a9f00b1d1
     * PLN - 8d106635-3613-11e1-9d1a-1c7ee51fe239
     * UAH - 7383a1a5-e50d-11e0-a668-a71a9f00b1d1
     *
     * @param $price
     * @param string $currencies
     * @return string
     */
    public static function convertPriceForFilter($price, $currencies = '7383a1a5-e50d-11e0-a668-a71a9f00b1d1') {
        /* @var $currency Price */
        $currency = DB::select()->from(static::$table)->where('status', '=', 1)->and_where('import_id', 'LIKE', $currencies)->find();

        if ($currency) {
            if ($currency->exchange > 0) {
                $cost = $price * $currency->exchange;
            } else {
                $cost = $price / $currency->exchange;
            }

            if (Config::get('basic.markup') > 0) {
                $cost = self::addPercent($cost);
            }

            return number_format($cost, 2, '.', '');
        }
    }

}
