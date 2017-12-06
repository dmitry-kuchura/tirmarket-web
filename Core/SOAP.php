<?php

namespace Core;

use Exception;
use SoapClient;

class SOAP
{
    static $wsdl = 'http://tir.maccen.com:8081/webservice/ws/Exchange.1cws?wsdl';

    /**
     * Создание запроса в SOAP
     *
     * @param $function
     * @param array $params
     * @return mixed
     * @throws Exception
     */
    public static function createSoapClient($function, $params = [])
    {
        try {
            $client = new SoapClient(self::$wsdl, [
                'exception' => 1,
                'cache_wsdl' => WSDL_CACHE_MEMORY,
                'trace' => true,
            ]);

            return $client->__soapCall($function, [], $params);
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }
    }

    /**
     * Список товаров
     *
     * @param array $params
     * @return mixed
     */
    public static function soapGetProductsList($params = [])
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getProducts($params);

        return $result->return->products->product;
    }

    /**
     * Список категорий
     *
     * @return mixed
     * @throws Exception
     */
    public static function soapGetCategoriesList()
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getCategories();

        return $result->return->categories->category;
    }

    /**
     * Список категорий
     *
     * @return mixed
     * @throws Exception
     */
    public static function soapGetBrandsList()
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getBrands();

        return $result->return->categories->category;
    }



    /**
     * Конкретная категория
     *
     * @param array $params
     * @return mixed
     * @throws Exception
     */
    public static function getCategory($params = [])
    {
        try {
            $client = new SoapClient(self::$wsdl, [
                'exception' => 1,
                'cache_wsdl' => WSDL_CACHE_MEMORY,
                'trace' => true,
            ]);

            $result = $client->getCategory($params);
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        return $result->return;
    }

    /**
     * Конкретный бренд
     *
     * @param array $params
     * @return mixed
     * @throws Exception
     */
    public static function getBrand($params = [])
    {
        try {
            $client = new SoapClient(self::$wsdl, [
                'exception' => 1,
                'cache_wsdl' => WSDL_CACHE_MEMORY,
                'trace' => true,
            ]);

            $result = $client->getBrand($params);
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        return $result->return;
    }

    /**
     * Список складов
     *
     * @param array $params
     * @return mixed
     * @throws Exception
     */
    public static function getStock($params = [])
    {
        try {
            $client = new SoapClient(self::$wsdl, [
                'exception' => 1,
                'cache_wsdl' => WSDL_CACHE_MEMORY,
                'trace' => true,
            ]);

            $result = $client->getStock($params);
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        return $result->return;
    }

    /**
     * Получение конкретного товара
     *
     * @param array $params
     * @return mixed
     */
    public static function soapProduct($params = [])
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getProduct($params);

        return $result->return;
    }

    /**
     * Список цен
     *
     * @param array $params
     * @return mixed
     */
    public static function soapPrices($params = [])
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getPrices($params);

        return $result->return->prices;
    }

    /**
     * send Orders
     *
     * @param array $params
     * @return mixed
     * @throws Exception
     */
    public static function sendOrders($params = [])
    {
        try {
            $client = new SoapClient(self::$wsdl, [
                'exception' => 1,
                'cache_wsdl' => WSDL_CACHE_MEMORY,
                'trace' => true,
            ]);
            $data = $client->putOrder($params);

            return $data->return;
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }
    }
}