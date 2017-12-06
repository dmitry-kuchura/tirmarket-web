<?php

namespace Modules\Api\Controllers;

use Core\QB\DB;
use Exception;
use Modules\Api\Models\Products;
use Modules\Api\Models\Categories;

class Worker extends Api
{
    static $query = 'query';


    /**
     * Собственно очистка очереди
     *
     * @throws Exception
     */
    public function jobAction()
    {
        $result = DB::select()->from(static::$query)->where('status', '=', 1)->limit(666)->find_all();

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
                    //
                    break;
                case 'brands':
                    //
                    break;
                case 'categories':
                    if (Categories::checkCategory(json_decode($obj->result))) {
                        Categories::insertRows(json_decode($obj->result));
                    } else {
                        Categories::updateRows(json_decode($obj->result));
                    }

                    DB::update(static::$query)->set(['status' => 0])->where('id', '=', $obj->id)->execute();
                    break;
            }
        }

        $this->success(['success' => true]);
    }
}
