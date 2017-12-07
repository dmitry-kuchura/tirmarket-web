<?php

namespace Modules\Api\Controllers;

use Core\QB\DB;
use Exception;
use Core\SOAP;
use Modules\Ajax;
use Modules\Api\Models\Brands;
use Modules\Api\Models\Price;
use Modules\Api\Models\Products;
use Modules\Api\Models\Categories;

class Query extends Api
{
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

    /**
     * Добавление в очередь брендов
     *
     * @throws Exception
     */
    public function getBrandsAction()
    {
        $result = SOAP::soapGetBrandsList();

        if (count($result)) {
            foreach ($result as $obj) {
                Brands::insertBrandsToQuery($obj);
            }
        }

        $this->success(['success' => true]);
    }

    /**
     * Ценники в очередь
     *
     * @throws Exception
     */
    public function getPricesAction()
    {
        $params = ['update' => '2016-01-01'];
        $result = SOAP::soapGetPricesList($params);

        try {
            if (count($result)) {
                foreach ($result as $obj) {
                    Price::insertPricesToQuery($obj);
                }
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        $this->success(['success' => true]);
    }

    /**
     * Изображения из файла ./images.csv в таблицу очереди
     */
    public function getImagesAction()
    {
        $file = HOST . "/images.csv";
        ini_set('max_execution_time', 90000);

        $handle = fopen($file, "r");
        if ($handle) {
            $lines = file($file, FILE_IGNORE_NEW_LINES);

            foreach ($lines as $line) {
                $row = explode(',', $line);

                $data = [];
                $data['type'] = 'image';
                $data['result'] = json_encode(['artikul' => str_replace('"', '', $row[0]), 'image' => str_replace('"', '', $row[1])]);
                $data['created_at'] = time();
                $data['updated_at'] = time();

                $keys = [];
                $values = [];

                foreach ($data as $key => $value) {
                    $keys[] = $key;
                    $values[] = $value;
                }

                DB::insert('query', $keys)->values($values)->execute();
            }

            @unlink($file);
            $this->success(['success' => true]);
        }

    }
}
