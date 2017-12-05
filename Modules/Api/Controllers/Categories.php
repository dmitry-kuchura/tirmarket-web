<?php

namespace Modules\Api\Controllers;

use Core\Route;
use Core\SOAP;
use Exception;
use Modules\Api\Models\Categories as Model;

class Categories extends Api
{
    /**
     * Список категорий
     *
     * @throws Exception
     */
    public function getCategoriesAction()
    {
        $result = SOAP::createSoapClient('getCategories');

        if (count($result->return->categories->category)) {
            foreach ($result->return->categories->category as $obj) {
                if (Model::checkCategory($obj)) {
                    Model::insertRows($obj);
                } else {
                    Model::updateRows($obj);
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
                Model::updateRows($result);
            } catch (Exception $err) {
                throw new Exception($err->getMessage());
            }
        }

        $this->success(['success' => true]);
    }
}