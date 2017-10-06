<?php

namespace Modules\Api\Controllers;

use Core\SOAP;
use Modules\Api\Models\Brands;
use Modules\Base;
use Modules\Api\Models\Categories;

class Api extends Base
{
    /**
     * Ставим time_limit
     */
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

    public function getProductsAction()
    {
        $params = ['limit' => 500, 'offset' => 0];

        $result = SOAP::createSoapClient('getProducts', $params);

        var_dump($result);
        die;
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