<?php

namespace Modules\Api\Controllers;

use Exception;
use Core\SOAP;
use Modules\Ajax;
use Modules\Api\Models\Products;
use Modules\Api\Models\Categories;

class Query extends Ajax
{
    public function before()
    {
        header('Content-Type: application/json');
        set_time_limit(9999999999999);
    }

    /**
     * Импорт товаров
     *
     * @throws Exception
     */
    public function getProductsAction()
    {
        for ($i = 1; $i <= 1500; $i++) {
            $limit = 500;
            $offset = ($i - 1) * 500;
            $update = '2016-01-01';
            $params = ['limit' => $limit, 'offset' => $offset, 'update' => $update];

            try {
                $result = SOAP::soapGetProductsList($params);

                if (count($result)) {
                    foreach ($result as $obj) {
                        Products::insertProductsToQuery($obj);
                    }
                } else {
                    $i = 1500;
                }
            } catch (Exception $exception) {
                throw new Exception($exception->getMessage());
            }
        }

        $this->success(['success' => true]);
    }

    /**
     * Импорт в очередь категорий
     *
     * @throws Exception
     */
    public function getCategoriesAction()
    {
        $result = SOAP::soapGetCategoriesList();

        if (count($result)) {
            foreach ($result as $obj) {
                Categories::insertCategoriesToQuery($obj);
            }
        }

        $this->success(['success' => true]);
    }

    public function getBrandsAction()
    {
        $result = SOAP::soapGetCategoriesList();

        if (count($result)) {
            foreach ($result as $obj) {
                Categories::insertCategoriesToQuery($obj);
            }
        }

        $this->success(['success' => true]);
    }
}
