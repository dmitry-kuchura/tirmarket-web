<?php

namespace Modules\Api\Controllers;

use Core\SOAP;
use Modules\Base;
use Modules\Api\Models\Categories;

class Api extends Base
{
    public function before()
    {
        set_time_limit(9999999999999);
    }

    public function getCategoriesAction()
    {

        $result = SOAP::createSoapClient('getCategories');

        foreach ($result->return->categories->category as $obj) {
            if (Categories::checkCategory($obj)) {
                Categories::insertRows($obj);
            }
        }
    }
}