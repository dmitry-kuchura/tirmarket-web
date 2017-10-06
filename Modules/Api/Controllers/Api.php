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
        $result = SOAP::createSoapClient('getProducts');

        var_dump($result);
        die;
    }

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