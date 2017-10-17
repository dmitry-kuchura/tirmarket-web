<?php

namespace Modules\Api\Models;

use Core\QB\DB;
use Core\CommonI18n;
use Core\Text;

class StocksCount extends CommonI18n
{
    public static $table = 'warehouses';
    public static $catalogTable = 'catalog';
    public static $tableI18n = 'warehouses_i18n';
    public static $catalogTableI18n = 'catalog_i18n';

    /**
     * Проверка на существование категории по ID
     *
     * @param $obj
     * @return bool
     */
    public static function check($obj)
    {
        $stock = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->stockID)->find();
        $catalog = DB::select()->from(static::$catalogTable)->where('import_id', 'LIKE', $obj->productID)->find();

        if (count($stock) && count($catalog)) {
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
        $stock = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->stockID)->find();

        $data = [];
        $data['stock_count'] = $obj->count;
        $data['stock_id'] = $stock->id;
        $data['updated_at'] = time();

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::insert(static::$catalogTable, $keys)->values($values)->execute();
    }
}