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