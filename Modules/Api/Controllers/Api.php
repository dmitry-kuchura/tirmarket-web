<?php

namespace Modules\Api\Controllers;

use Core\QB\DB;
use Core\Route;
use Core\SOAP;
use Core\User;
use Exception;
use Modules\Ajax;
use Modules\Api\Models\Invoices;
use Modules\Api\Models\Models;
use Modules\Api\Models\Users;
use Modules\Api\Models\Price;
use Modules\Api\Models\Stocks;
use Modules\Api\Models\Products;
use Modules\Api\Models\Currencies;
use Modules\Api\Models\Orders;
use Modules\Api\Models\StocksCount;

class Api extends Ajax
{
    public function before()
    {
        header('Content-Type: application/json');
        set_time_limit(0);
    }

    /**
     * Получение складов
     *
     * @throws Exception
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
     * Обновление остатков
     *
     * @throws Exception
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
     *
     * @throws Exception
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
     *
     * @throws Exception
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
     *
     * @throws Exception
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
     *
     * @throws Exception
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
     * @throws Exception
     */
    public function getQueueAction()
    {
        $params = ['update' => '2015-01-01'];
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

    /**
     * Получение документов
     *
     * @throws Exception
     */
    public function getInvoicesAction()
    {
        $result = SOAP::createSoapClient('getInvoices');

        foreach ($result->return->invoices->invoice as $obj) {
            if (Invoices::check($obj)) {
                if ($obj->products) {
                    Invoices::insertRows($obj);
                }
            }
        }
    }
}
