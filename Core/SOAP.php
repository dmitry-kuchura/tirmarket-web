<?php

namespace Core;

use Exception;
use SoapClient;


class SOAP
{
    static $wsdl = 'http://tir.maccen.com:8081/webservice/ws/Exchange.1cws?wsdl';

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

    public static function soapProductsList($params = [])
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getProducts($params);

        return $result->return->products->product;
    }

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

    public static function createSoapClientPrices($params = [])
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getPrices($params);

        return $result;
    }
}