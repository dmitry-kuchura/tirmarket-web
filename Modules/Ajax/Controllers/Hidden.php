<?php

namespace Modules\Ajax\Controllers;

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

}