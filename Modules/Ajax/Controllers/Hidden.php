<?php

namespace Modules\Ajax\Controllers;

use Core\Arr;
use Core\View;
use Modules\Ajax;

class Hidden extends Ajax
{
    public function authAction()
    {
        echo View::tpl([], 'Hidden/Auth');
        die;
    }

    public function basketAction()
    {
        echo View::tpl([], 'Hidden/Basket');
        die;
    }

    public function clickAction()
    {
        $catalog = Arr::get($this->post, 'id');

        echo View::tpl(['catalog' => $catalog], 'Hidden/Click');
        die;
    }

    public function orderAction()
    {
        $catalog = Arr::get($this->post, 'id');

        echo View::tpl(['catalog' => $catalog], 'Hidden/Order');
        die;
    }

}