<?php

namespace Modules\Api\Controllers;

use Core\QB\DB;
use Core\SOAP;
use Modules\Base;
use Modules\Api\Models\Brands;
use Modules\Api\Models\Products;
use Modules\Api\Models\Categories;

class Api extends Base
{
    public function before()
    {
        set_time_limit(9999999999999);
    }

    /**
     * Список категорий
     */
    public function getCategoriesAction()
    {
        $result = SOAP::createSoapClient('getCategories');

        if (count($result->return->categories->category)) {
            foreach ($result->return->categories->category as $obj) {
                if (Categories::checkCategory($obj)) {
                    Categories::insertRows($obj);
                } else {
                    Categories::updateRows($obj);
                }
            }
        }
    }

    /**
     * Список товаров
     */
    public function getProductsAction()
    {
        for ($i = 1; $i <= 1500; $i++) {
            $offset = $i >= 2 ? 350 * $i : 0;
            $params = ['limit' => 10, 'offset' => $offset];

            $result = SOAP::createSoapClientProducts($params);
            if (count($result)) {
                foreach ($result as $obj) {
                    if (Products::checkItem($obj)) {
                        Products::insertRows($obj);
                    } else {
                        Products::updateRows($obj);
                    }
                }
            }
        }
    }

    /**
     * Список брендов
     */
    public function getBrandsAction()
    {
        $result = SOAP::createSoapClient('getBrands');

        foreach ($result->return->brands->brand as $obj) {
            if (Brands::checkBrand($obj)) {
                Brands::insertRows($obj);
            }
        }
    }

    public function updateParentAction()
    {
        $result = DB::select()->from('catalog')->where('status', '=', 1)->find_all();

        foreach ($result as $obj) {
            $parent = DB::select()->from('catalog_tree')->where('import_id', '=', $obj->parent_id)->find();


            $model = [];
            $model['parent_id'] = $parent->id;

            DB::update('catalog')->set($model)->where('id', '=', $obj->id)->execute();
        }
    }
}