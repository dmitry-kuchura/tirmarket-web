<?php

namespace Modules\User\Controllers;

use Core\Arr;
use Core\Common;
use Core\CommonI18n;
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
     * Страница пользователя
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
     * Редактирвоание данных
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
     * Востановление пароля
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
     * Список избраного
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

    /**
     * Список транспортных средств пользователя
     *
     * @return bool
     */
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

    /**
     * Страница заказов
     */
    public function ordersAction()
    {
        $this->_seo['user_title'] = __('История заказов');

        $orders = Orders::getUserOrders(U::info()->id);

        $result = CommonI18n::factory('payments')->getRows(1, 'sort', 'ASC');

        $payments = [];

        foreach ($result as $obj) {
            $payments[$obj->id] = $obj->name;
        }

        if (count($orders)) {
            $orders_items = Orders::getUserOrdersItems(U::info()->id);
        } else {
            $orders_items = [];
        }

        $this->_content = View::tpl([
            'orders' => $orders,
            'orders_items' => $orders_items,
            'payments' => $payments,
            'statuses' => Config::get('order.statuses'),
            'stClasses' => Config::get('order.st_classes'),
        ], 'User/Orders');
    }

    /**
     * Авторизация с админки
     * @return bool
     */
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

    /**
     * Подтверждение регистрации
     *
     * @return bool
     */
    public function confirmAction()
    {
        if (U::info()) {
            return Config::error();
        }
        if (!Route::param('hash')) {
            return Config::error();
        }

        $user = Model::getRow(Route::param('hash'), 'hash');
        if (!$user) {
            return Config::error();
        }
        if ($user->status) {
            Message::GetMessage(0, __('Вы уже подтвердили свой E-Mail!'));
            HTTP::redirect('/');
        }

        Model::update(['status' => 1], $user->id);

        Email::sendTemplate(13, [
            '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
            '{{ip}}' => GeoIP::ip(),
            '{{date}}' => date('d.m.Y'),
            '{{email}}' => $user->email,
        ], $user->email);

        U::factory()->auth($user, 0);
        Message::GetMessage(1, __('Вы успешно зарегистрировались на сайте! Пожалуйста укажите остальную информацию о себе в личном кабинете для того, что бы мы могли обращаться к Вам по имени'));
        HTTP::redirect('account');
    }

    /**
     * Разлогин пользователя
     * @return bool
     */
    public function logoutAction()
    {
        if (!U::info()) {
            return Config::error();
        }
        U::factory()->logout();
        Message::GetMessage(1, __('Возвращайтесь еще!'));
        HTTP::redirect('/');
    }
}