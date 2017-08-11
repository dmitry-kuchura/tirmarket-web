<?php

namespace Modules\Ajax\Controllers;

use Core\Arr;
use Core\View;
use Modules\Ajax;

class Hidden extends Ajax
{
    /**
     * Всплывайка авторизации/регистрации
     */
    public function authAction()
    {
        echo View::tpl([], 'Hidden/Auth');
        die;
    }

    /**
     * Всплывайка корзины
     */
    public function basketAction()
    {
        echo View::tpl([], 'Hidden/Basket');
        die;
    }

    /**
     * Всплывайка купить в один клик
     */
    public function clickAction()
    {
        $catalog = Arr::get($this->post, 'id');

        echo View::tpl(['catalog' => $catalog], 'Hidden/Click');
        die;
    }

    /**
     * Всплывайка заказ отсутвующего товара
     */
    public function orderAction()
    {
        $catalog = Arr::get($this->post, 'id');

        echo View::tpl(['catalog' => $catalog], 'Hidden/Order');
        die;
    }

}