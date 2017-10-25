<?php

namespace Modules\Api\Controllers;

use Core\Route;
use Core\SOAP;
use Core\QB\DB;
use Exception;
use Modules\Api\Models\Models;
use Modules\Api\Models\Users;
use Modules\Base;
use Modules\Api\Models\Price;
use Modules\Api\Models\Brands;
use Modules\Api\Models\Stocks;
use Modules\Api\Models\Products;
use Modules\Api\Models\Categories;
use Modules\Api\Models\StocksCount;
use Wezom\Modules\Ajax;

class Api extends Ajax
{
    public function before()
    {
        header('Content-Type: application/json');
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

        $this->success(['success' => true]);
    }

    /**
     * Конкретная категория
     *
     * @throws Exception
     */
    public function getCategoryAction()
    {
        $result = SOAP::getCategory(['id' => Route::param('id')]);

        if (count($result)) {
            try {
                Categories::updateRows($result);
            } catch (Exception $err) {
                throw new Exception($err->getMessage());
            }
        }

        $this->success(['success' => true]);
    }


    /**
     * Список товаров
     */
    public function getProductsAction()
    {
        for ($i = 1; $i <= 1500; $i++) {
            $limit = 150;
            $offset = ($i - 1) * 150;
            $update = '2015-01-01';
            $params = ['limit' => $limit, 'offset' => $offset, 'update' => $update];

            try {
                $result = SOAP::soapProductsList($params);
                if (count($result)) {
                    foreach ($result as $obj) {
                        if (Products::checkItem($obj)) {
                            Products::insertRows($obj);
                        } else {
                            Products::updateRows($obj);
                        }
                    }
                } else {
                    $i = 1500;
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
            Products::updateRows($result);
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        $this->success(['success' => true]);
    }

    /**
     * Метод getStock
     *
     * @throws Exception
     */
    public function getStockAction()
    {
        $params = ['id' => Route::param('id')];
        $result = SOAP::getStock($params);

        var_dump($result);
        die;
        try {

        } catch (Exception $err) {
            throw new Exception($err->getMessage());
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
            } else {
                Brands::updateRows($obj);
            }
        }
    }

    /**
     * Отдельный бренд
     *
     * @throws Exception
     */
    public function getBrandAction()
    {
        $result = SOAP::getBrand(['id' => Route::param('id')]);

        if (isset($result)) {
            try {
                Brands::updateRows($result);
            } catch (Exception $err) {
                throw new Exception($err->getMessage());
            }
        }

        $this->success(['success' => true]);
    }


    /**
     * Получение складов
     */
    public function getStocksAction()
    {
        $result = SOAP::createSoapClient('getStocks');

        if (count($result->return->stocks->stock)) {
            foreach ($result->return->stocks->stock as $obj) {
                if (Stocks::check($obj)) {
                    Stocks::insertRows($obj);
                }
            }
        }
    }

    /**
     * Обновление остатков
     */
    public function getStockCountAction()
    {
        $result = SOAP::createSoapClient('getStockCount');

        try {
            foreach ($result->return->stockcount as $obj) {
                if (StocksCount::check($obj)) {
                    StocksCount::insertRows($obj);
                }
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }
    }

    /**
     * Список цен
     */
    public function getPricesAction()
    {
        $params = ['update' => '2017-06-01'];
        $result = SOAP::soapPrices($params);

        var_dump($result);
        die;

        try {
            if (count($result)) {
                foreach ($result as $obj) {
                    if (Price::checkItem($obj)) {
                        Price::updatePrice($obj);
                    }
                }
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        $this->success(['success' => true]);
    }

    /**
     * Список моделей автомобилей
     *
     * @throws Exception
     */
    public function getModelsAction()
    {
        $result = SOAP::createSoapClient('getModels');

        try {
            if (count($result->return->models)) {
                foreach ($result->return->models as $obj) {
                    if (Models::check($obj)) {
                        Models::insertRows($obj);
                    } else {
                        Models::updateRows($obj);
                    }
                }
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        $this->success(['success' => true]);
    }

    /**
     * Список типов цен
     */
    public function getPricesTypesAction()
    {
        $result = SOAP::createSoapClient('getPricesTypes');

        if (count($result->return->pricetypes->pricetype)) {
            foreach ($result->return->pricetypes->pricetype as $obj) {
                if (Price::check($obj)) {
                    Price::insertRows($obj);
                } else {
                    Price::updateRows($obj);
                }
            }
        }
    }

    public function getUsersAction()
    {
        $result = SOAP::createSoapClient('getUsers');

        if (count($result->return->users) > 1) {
            foreach ($result->return->users as $obj) {
                if (Users::check($obj)) {
                    Users::insertRows($obj);
                } else {
                    Users::updateRows($obj);
                }
            }
        } else {
            Users::insertRows($result->return->users);
        }

        $this->success(['success' => true]);
    }
}