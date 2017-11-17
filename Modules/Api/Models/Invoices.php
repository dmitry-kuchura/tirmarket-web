<?php

namespace Modules\Api\Models;

use Core\User;
use Core\QB\DB;
use Core\CommonI18n;
use Modules\Catalog\Models\Items;

class Invoices extends CommonI18n
{
    public static $table = 'invoices';
    public static $tableItems = 'invoices_items';

    /**
     * Проверка на существование по ID
     *
     * @param $obj
     * @return bool
     */
    public static function check($obj)
    {
        if ($obj->id) {
            $check = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->id)->find();

            if (count($check)) {
                return false;
            } else {
                return true;
            }
        } else {
            return false;
        }
    }

    /**
     * Добавление из 1С
     *
     * @param $obj
     */
    public static function insertRows($obj)
    {
        $data = [];
        $data['code_1c'] = $obj->code1C;
        $data['date'] = strtotime($obj->date);
        $data['client_id'] = User::infoByImportId($obj->clientID);
        $data['contract_id'] = $obj->contractID;
        $data['currency_id'] = Currencies::getRow($obj->currencyID, 'import_id')->id;
        $data['import_id'] = $obj->id;
        $data['document'] = $obj->document;
        $data['amount'] = $obj->summa;
        $data['created_at'] = time();
        $data['status'] = 1;

        $keys = [];
        $values = [];
        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        $result = DB::insert(static::$table, $keys)->values($values)->execute();
        $lastID = $result[0];

        if ($obj->products) {
            if (is_array($obj->products)) {
                foreach ($obj->products as $item) {
                    $data = [];

                    $data['invoice_id'] = $lastID;
                    $data['product_id'] = Items::getRow($item->productID)->id;
                    $data['party'] = $item->party;
                    $data['count'] = $item->count;
                    $data['price'] = $item->price;
                    $data['summa'] = $item->summa;

                    $data['created_at'] = time();
                    $data['status'] = 1;

                    $keys = [];
                    $values = [];
                    foreach ($data as $key => $value) {
                        $keys[] = $key;
                        $values[] = $value;
                    }

                    DB::insert(static::$tableItems, $keys)->values($values)->execute();
                }
            } else {
                $data = [];

                $data['invoice_id'] = $lastID;
                $data['product_id'] = Items::getRow($obj->products->productID)->id;
                $data['party'] = $obj->products->party;
                $data['count'] = $obj->products->count;
                $data['price'] = $obj->products->price;
                $data['summa'] = $obj->products->summa;

                $data['created_at'] = time();
                $data['status'] = 1;

                $keys = [];
                $values = [];
                foreach ($data as $key => $value) {
                    $keys[] = $key;
                    $values[] = $value;
                }

                DB::insert(static::$tableItems, $keys)->values($values)->execute();
            }
        }
    }
}