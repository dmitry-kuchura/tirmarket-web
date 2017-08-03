<?php

namespace Modules\User\Controllers;

use Core\Arr;
use Core\Common;
use Core\Email;
use Core\Encrypt;
use Core\GeoIP;
use Core\HTML;
use Core\QB\DB;
use Core\Route;
use Core\Validation\Rules;
use Core\View;
use Core\Config;
use Core\User AS U;
use Core\HTTP;
use Core\Message;
use Modules\Base;
use Modules\Cart\Models\Orders;
use Modules\User\Models\Users AS Model;
use Modules\User\Models\Users;

class User extends Base
{

    public function before()
    {
        parent::before();
        $this->setBreadcrumbs(__('Личный кабинет'), 'account');
        $this->_template = 'Cabinet';
        $this->_seo['h1'] = __('Личный кабинет');
        $this->_seo['title'] = __('Личный кабинет');
        $this->_seo['keywords'] = __('Личный кабинет');
        $this->_seo['description'] = __('Личный кабинет');
    }

    /**
     * Index action for User
     *
     * @return string
     */
    public function indexAction()
    {
        $this->_seo['user_title'] = __('Личные данные');

        if (!U::info()) {
            return Config::error();
        }
        $this->_content = View::tpl([
            'user' => U::info()
        ], 'User/Index');
    }

    /**
     * Edit personal data
     */
    public function editAction()
    {
        $this->_seo['user_title'] = __('Редактировать профиль');

        $user = U::info();

        if (!$user) {
            return Config::error();
        }

        $this->_content = View::tpl([
            'user' => $user
        ], 'User/Edit');
    }

    /**
     * Forgot password
     */
    public function passwordAction()
    {
        $this->_seo['user_title'] = __('Изменить пароль');

        $user = U::info();

        if (!$user) {
            return Config::error();
        }

        $this->_content = View::tpl([
            'user' => $user
        ], 'User/Password');
    }

    /**
     * Favorites list
     *
     * @return string
     */
    public function favoritesAction()
    {
        $this->_seo['user_title'] = __('Избранное');

        $user = U::info();

        if (!$user) {
            return Config::error();
        }

        $result = Users::getFavorites($user->id);

        $this->_content = View::tpl([
            'user' => $user,
            'result' => $result,
        ], 'User/Favorites');
    }

    public function transportAction()
    {
        $this->_seo['user_title'] = __('Добавить Т/С');

        $user = U::info();

        if (!$user) {
            return Config::error();
        }

        $result = Users::getUserTransport($user->id);

        $this->_content = View::tpl([
            'user' => $user,
            'result' => $result,
        ], 'User/Transport');
    }

    public function ordersAction()
    {
        $this->_seo['user_title'] = __('История заказов');

        $orders = Orders::getUserOrders(U::info()->id);

        if (count($orders)) {
            $orders_items = Orders::getUserOrdersItems(U::info()->id);
        } else {
            $orders_items = [];
        }

        $this->_content = View::tpl([
            'orders' => $orders,
            'orders_items' => $orders_items,
            'statuses' => Config::get('order.statuses'),
            'stClasses' => Config::get('order.st_classes'),
        ], 'User/Orders');
    }

    public function fastAuthAction()
    {
        if (!array_key_exists('admin', $_SESSION)) {
            return Config::error();
        }
        $admin = DB::select('users.*', ['users_roles.alias', 'role'])
            ->from('users')
            ->join('users_roles')->on('users.role_id', '=', 'users_roles.id')
            ->where('users.id', '=', (int)$_SESSION['admin'])
            ->where('users.status', '=', 1)
            ->find();
        if (!$admin) {
            return Config::error();
        }
        $user_id = Encrypt::instance()->decode(Route::param('hash'));
        $user = Common::factory('users')->getRow($user_id, 'id', 1);
        if (!$user) {
            return Config::error();
        }
        U::factory()->auth($user);
        $name = trim($user->last_name . ' ' . $user->name);
        $name = $name ?: '#' . $user->id;
        Message::GetMessage(1, __('Вы успешно авторизовались как пользователь') . ' ' . $name);
        HTTP::redirect('account');
    }

    public function addMeta($name, $order = false)
    {
        Config::set('h1', $name);
        Config::set('title', $name);
        Config::set('keywords', $name);
        Config::set('description', $name);
        if ($order) {
            $this->setBreadcrumbs(__('Мои заказы'), 'account/orders');
        }
        $this->setBreadcrumbs($name);
    }

}