<?php

namespace Core;

use I18n;

class NovaPoshta
{
    private static $key = '1299c9a99a45f6721513ffb1b91393a7';

    /**
     * Returns cities list
     *
     * @param $language
     * @return array
     */
    public static function getCitiesList($language = null)
    {
        if ($language) {
            $lang = $language;
        } else {
            $lang = I18n::$default_lang;
        }

        $params = [
            'modelName' => 'Address',
            'calledMethod' => 'getCities',
            'apiKey' => self::$key,
        ];

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, 'https://api.novaposhta.ua/v2.0/json/');
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, ["Content-Type: application/json"]);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($params));
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

        $response = curl_exec($ch);
        curl_close($ch);
        $data = json_decode($response, 1);

        $cities = [];

        switch ($lang) {
            case 'ru':
                foreach ($data['data'] as $key => $val) {
                    $cities[$val['Ref']] = $val['DescriptionRu'];
                }
                break;
            case 'ua':
                foreach ($data['data'] as $key => $val) {
                    $cities[$val['Ref']] = $val['Description'];
                }
                break;
        }

        return $cities;
    }

    /**
     * Returns warehouses list for specified city
     *
     * @param $city_ref
     * @param null $selectedWarehouse
     * @param null $language
     * @return array
     */
    public static function getWarehousesList($city_ref, $selectedWarehouse = null, $language = null)
    {
        if ($language) {
            $lang = $language;
        } else {
            $lang = I18n::$default_lang;
        }

        $params = [
            'modelName' => 'AddressGeneral',
            'calledMethod' => 'getWarehouses',
            'methodProperties' => [
                'Language' => $lang,
                'CityRef' => $city_ref,
            ],
            'apiKey' => self::$key,
        ];

        $curl = curl_init();
        curl_setopt_array($curl, [
            CURLOPT_URL => "https://api.novaposhta.ua/v2.0/json/",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "POST",
            CURLOPT_POSTFIELDS => json_encode($params),
            CURLOPT_HTTPHEADER => ["content-type: application/json",],
        ]);

        $response = curl_exec($curl);
        curl_close($curl);

        $data = json_decode($response, 1);

        $warehouses = [];

        switch ($lang) {
            case 'ru':
                foreach ($data['data'] as $value) {
                    $warehouses[$value['Ref']] = $value['DescriptionRu'];
                }
                break;
            case 'ua':
                foreach ($data['data'] as $value) {
                    $warehouses[$value['Ref']] = $value['Description'];
                }
                break;
        }

        return $warehouses;
    }
}