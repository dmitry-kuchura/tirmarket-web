<?php

namespace Modules\Api\Controllers;

use Core\QB\DB;
use Core\Route;
use Core\SOAP;
use Core\User;
use Exception;
use Modules\Ajax;
use Modules\Api\Models\Models;
use Modules\Api\Models\Users;
use Modules\Api\Models\Price;
use Modules\Api\Models\Brands;
use Modules\Api\Models\Stocks;
use Modules\Api\Models\Products;
use Modules\Api\Models\Categories;
use Modules\Api\Models\Currencies;
use Modules\Api\Models\Orders;
use Modules\Api\Models\StocksCount;

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

    /**
     * Список пользователей
     */
    public function getUsersAction()
    {
        $result = SOAP::createSoapClient('getUsers');

        if (is_array($result->return->users)) {
            foreach ($result->return->users as $obj) {
                if (Users::check($obj)) {
                    Users::insertRows($obj);
                }
            }
        } else {
            if (Users::check($result->return->users)) {
                Users::insertRows($result->return->users);
            }
        }

        $this->success(['success' => true]);
    }

    /**
     * Обновление валют из 1С
     */
    public function getCurrenciesAction()
    {
        $result = SOAP::createSoapClient('getCurrencies');

        if (count($result->return->currency) > 1) {
            foreach ($result->return->currency as $obj) {
                if (Currencies::check($obj)) {
                    Currencies::insertRows($obj);
                } else {
                    Currencies::updateRows($obj);
                }
            }
        } else {
            Currencies::insertRows($result->return->users);
        }

        $this->success(['success' => true]);
    }

    /**
     * Список заказов из 1С
     */
    public function getOrdersAction()
    {
        $result = SOAP::createSoapClient('getOrders');

        foreach ($result->return->orders->order as $obj) {
            if (Orders::check($obj)) {
                Orders::insertRows($obj);
            }
        }

        $this->success(['success' => true]);
    }

    /**
     * Отправка заказов в 1С
     */
    public function putOrdersAction()
    {
        header('Content-Type: text/html; charset=UTF-8');
        $result = DB::select()->from('orders')->where('import_id', 'IS', null)->find_all();

        foreach ($result as $obj) {
            $items = Orders::itemsToArray($obj->id);
            $user = User::infoById($obj->user_id);

            if ($user->import_id) {
                $params['data'] = [
                    'date' => date('Y-m-d', $obj->created_at),
                    'userID' => $user->import_id,
                    'clientID' => $user->client_id,
                    'currencyID' => $user->currency_id,
                    'contractID' => $user->contract,
                    'products' => $items,
                ];

                $orderID = SOAP::sendOrders($params);
                if ($orderID) {
                    DB::update('orders')->set(['import_id' => $orderID])->where('id', '=', $obj->id)->execute();
                }
            }
        }

        $this->success(['success' => true]);
    }

    /**
     * Шах и Мат БЛЯТЬ
     *
     * @throws Exception
     */
    public function getQueueAction()
    {
        $params = ['update' => '2017-01-01'];
        $result = SOAP::soapPrices($params);

        try {
            if (count($result)) {
                foreach ($result as $obj) {
                    DB::insert('queue', ['productID', 'price', 'party'])->values([$obj->productID, $obj->price, $obj->party])->execute();
                }
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        $this->success(['success' => true]);
    }

    public function insertQueueAction()
    {
        $result = DB::select()->from('queue')->limit(500)->find_all();

        try {
            foreach ($result as $obj) {
                $params = ['id' => $obj->productID];
                $result = SOAP::soapProduct($params);

                if (Products::checkItem($result)) {
                    Products::insertRows($result);
                }

                DB::delete('queue')->where('id', '=', $obj->id)->execute();
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        $this->success(['success' => true]);
    }
}
