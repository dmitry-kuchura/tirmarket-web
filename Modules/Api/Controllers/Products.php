<?php

namespace Modules\Api\Controllers;

use Exception;
use Core\SOAP;
use Core\Route;
use Modules\Api\Models\Price;
use Modules\Api\Models\Products as Model;

class Products extends Api
{
    /**
     * Список товаров
     *
     * @throws Exception
     */
    public function getProductsAction()
    {
        for ($i = 1; $i <= 15000; $i++) {
            $limit = 150;
            $offset = ($i - 1) * 150;
            $update = '2015-01-01';
            $params = ['limit' => $limit, 'offset' => $offset, 'update' => $update];

            try {
                $result = SOAP::soapProductsList($params);

                if (count($result)) {
                    foreach ($result as $obj) {
                        if (Model::checkItem($obj)) {
                            Model::insertRows($obj);
                        } else {
                            Model::updateRows($obj);
                        }
                    }
                } else {
                    $i = 15000;
                }
            } catch (Exception $err) {
                throw new Exception($err->getMessage());
            }
        }

        $this->success(['success' => true]);
    }

    /**
     * Определенный товар
     *
     * @throws Exception
     */
    public function getCurrentProductAction()
    {
        $params = ['id' => Route::param('id')];
        $result = SOAP::soapProduct($params);

        try {
            Model::updateRows($result);
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        $this->success(['success' => true]);
    }

    /**
     * Список цен
     *
     * @throws Exception
     */
    public function getPricesAction()
    {
        $params = ['update' => '2015-01-01'];
        $result = SOAP::soapPrices($params);

        try {
            if (count($result)) {
                foreach ($result as $obj) {
                    Price::updatePrice($obj);
                }
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        $this->success(['success' => true]);
    }
}