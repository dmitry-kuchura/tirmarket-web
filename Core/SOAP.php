<?php

namespace Core;

use SoapClient;


class SOAP
{
    static $wsdl = 'http://tir.maccen.com:8081/webservice/ws/Exchange.1cws?wsdl';

    public static function createSoapClient($function, $params = [])
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        return $client->__soapCall($function, [], $params);
    }

    public static function createSoapClientProducts($params = [])
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getProducts($params);

        return $result->return->products->product;
    }

    public static function createSoapClientStock($params = [])
    {
        $client = new SoapClient(self::$wsdl, [
            'exception' => 1,
            'cache_wsdl' => WSDL_CACHE_MEMORY,
            'trace' => true,
        ]);

        $result = $client->getStock($params);

        return $result->return->products->product;
    }
}