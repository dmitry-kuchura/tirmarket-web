<?php

namespace Modules\Api\Controllers;

use Exception;
use Core\QB\DB;
use Modules\Api\Models\Brands;
use Modules\Api\Models\Image;
use Modules\Api\Models\Price;
use Modules\Api\Models\Products;
use Modules\Api\Models\Categories;
use Modules\Api\Models\StocksCount;

class Worker extends Api
{
    static $query = 'query';
    static $log = 'query_log';

    /**
     * Собственно очистка очереди
     *
     * @throws Exception
     */
    public function jobAction()
    {
        $result = DB::select()->from(static::$query)->where('status', '=', 1)->limit(1500)->find_all();

        if (count($result)) {
            foreach ($result as $obj) {
                switch ($obj->type) {
                    case 'products':
                        if (Products::checkItem(json_decode($obj->result))) {
                            Products::insertRows(json_decode($obj->result));
                        } else {
                            Products::updateRows(json_decode($obj->result));
                        }

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'prices':
                        Price::updatePrice(json_decode($obj->result));

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'brands':
                        if (Brands::checkBrand(json_decode($obj->result))) {
                            Brands::insertRows(json_decode($obj->result));
                        } else {
                            Brands::updateRows(json_decode($obj->result));
                        }

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'categories':
                        if (Categories::checkCategory(json_decode($obj->result))) {
                            Categories::insertRows(json_decode($obj->result));
                        } else {
                            Categories::updateRows(json_decode($obj->result));
                        }

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'image':
                        Image::uploadPhoto(json_decode($obj->result));

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'stocks':
                        if (StocksCount::check(json_decode($obj->result))) {
                            StocksCount::insertRows(json_decode($obj->result));
                        }

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                }
            }

            DB::insert(static::$log, ['description', 'created_at'])->values(['Обновлено из планировщика задач', time()])->execute();
            self::optimizeTable();

            $this->success(['success' => true]);
        } else {
            $this->success(['alert' => 'Worker empty!']);
        }
    }

    /**
     * Запуск из Админки
     *
     * @throws Exception
     */
    public function manualJobAction()
    {
        $result = DB::select()->from(static::$query)->where('status', '=', 1)->limit(666)->find_all();
        if (count($result)) {
            foreach ($result as $obj) {
                switch ($obj->type) {
                    case 'products':
                        if (Products::checkItem(json_decode($obj->result))) {
                            Products::insertRows(json_decode($obj->result));
                        } else {
                            Products::updateRows(json_decode($obj->result));
                        }

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'prices':
                        Price::updatePrice(json_decode($obj->result));

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'brands':
                        if (Brands::checkBrand(json_decode($obj->result))) {
                            Brands::insertRows(json_decode($obj->result));
                        } else {
                            Brands::updateRows(json_decode($obj->result));
                        }

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'categories':
                        if (Categories::checkCategory(json_decode($obj->result))) {
                            Categories::insertRows(json_decode($obj->result));
                        } else {
                            Categories::updateRows(json_decode($obj->result));
                        }

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'image':
                        Image::uploadPhoto(json_decode($obj->result));

                        DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                        break;
                    case 'stocks':
                        if (StocksCount::check(json_decode($obj->result))) {
                            StocksCount::insertRows(json_decode($obj->result));
                        }
                        break;
                }
            }

            DB::insert(static::$log, ['description', 'created_at'])->values(['Обновлено вручную', time()])->execute();
            self::optimizeTable();

            $this->success(['success' => true]);
        } else {
            $this->success(['alert' => 'Worker empty!']);
        }
    }

    /**
     * Оптимизация таблиц после импорта
     */
    public static function optimizeTable()
    {
        DB::update('catalog')->set(['status' => 1])->execute();
        DB::update('catalog')->set(['available' => 0])->where('cost', '=', 0)->execute();
        DB::update('catalog')->set(['available' => 1])->where('cost', '!=', 0)->execute();
    }
}