<?php

namespace Modules\Api\Controllers;

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

        foreach ($result->return->categories->category as $obj) {
            if (Categories::checkCategory($obj)) {
                Categories::insertRows($obj);
            }
        }
    }

    /**
     * Список товаров
     */
    public function getProductsAction()
    {
        for ($i = 1; $i <= 400; $i++) {
            $offset = $i >= 2 ? 500 * $i : 0;
            $params = ['limit' => 500, 'offset' => $offset];

            $result = SOAP::createSoapClientProducts($params);

            if (count($result)) {
                foreach ($result as $obj) {
                    if (Products::checkItem($obj)) {
                        Products::insertRows($obj);
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
}