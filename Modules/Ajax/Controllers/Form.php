<?php

namespace Modules\Ajax\Controllers;

use Core\CommonI18n;
use Core\Cookie;
use Core\GeoIP;
use Core\HTML;
use Core\QB\DB;
use Core\Arr;
use Core\User;
use Core\Config AS conf;
use Core\View;
use Core\System;
use Modules\Cart\Models\Cart;
use Core\Log;
use Core\Email;
use Core\Message;
use Core\Common;
use Modules\Ajax;
use Modules\Cart\Models\Delivery;
use Modules\Cart\Models\Payments;
use Modules\Catalog\Models\Items;

class Form extends Ajax
{
    protected $post;
    protected $files;

    function before()
    {
        parent::before();
        // Check for bans in blacklist
        $ip = GeoIP::ip();
        $ips = [];
        $ips[] = $ip;
        $ips[] = $this->ip($ip, [0]);
        $ips[] = $this->ip($ip, [1]);
        $ips[] = $this->ip($ip, [1, 0]);
        $ips[] = $this->ip($ip, [2]);
        $ips[] = $this->ip($ip, [2, 1]);
        $ips[] = $this->ip($ip, [2, 1, 0]);
        $ips[] = $this->ip($ip, [3]);
        $ips[] = $this->ip($ip, [3, 2]);
        $ips[] = $this->ip($ip, [3, 2, 1]);
        $ips[] = $this->ip($ip, [3, 2, 1, 0]);
        if (count($ips)) {
            $bans = DB::select('date')
                ->from('blacklist')
                ->where('status', '=', 1)
                ->where('ip', 'IN', $ips)
                ->and_where_open()
                ->or_where('date', '>', time())
                ->or_where('date', '=', null)
                ->and_where_close()
                ->find_all();
            if (sizeof($bans)) {
                $this->error(__('К сожалению это действие недоступно, т.к. администратор ограничил доступ к сайту с Вашего IP адреса'));
            }
        }
    }

    /**
     * Return IP
     *
     * @param $ip
     * @param $arr
     * @return string
     */
    private function ip($ip, $arr)
    {
        $_ip = explode('.', $ip);
        foreach ($arr AS $pos) {
            $_ip[$pos] = 'x';
        }
        $ip = implode('.', $_ip);
        return $ip;
    }

    /**
     * Авторизация пользователя
     */
    public function loginAction()
    {
        $email = Arr::get($this->post, 'email');
        $password = Arr::get($this->post, 'password');
        $remember = Arr::get($this->post, 'remember');
        if (!$password) {
            $this->error(__('Вы не ввели пароль!'));
        }
        $user = User::factory()->get_user_by_email($email, $password);
        if (!$user) {
            $this->error(__('Вы допустили ошибку в логине и/или пароле!'));
        }
        if (!$user->status) {
            $this->error(__('Пользователь с указанным E-Mail адресом либо заблокирован либо не активирован. Пожалуйста обратитесь к Администратору для решения сложившейся ситуации'));
        }

        // Authorization of the user
        DB::update('users')->set(['last_login' => time(), 'logins' => (int)$user->logins + 1, 'updated_at' => time()])->where('id', '=', $user->id)->execute();
        User::factory()->auth($user, $remember);
        Message::GetMessage(1, __('Вы успешно авторизовались на сайте!'), 3500);
        $this->success(['redirect' => '/account', 'noclear' => 1]);
    }

    /**
     * Регистрация пользователя
     */
    public function registrationAction()
    {
        $email = Arr::get($this->post, 'email');
        if (!$email or !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->error(__('Вы неверно ввели E-Mail!'));
        }

        $user = DB::select()->from('users')->where('email', '=', $email)->as_object()->execute()->current();
        if ($user) {
            if ($user->status) {
                $this->error(__('Пользователь с указанным E-Mail адресом уже зарегистрирован!'));
            }
            $this->error(__('Пользователь с указанным E-Mail адресом уже зарегистрирован, но либо заблокирован либо не подтвердил свой E-Mail адрес. Пожалуйста обратитесь к Администратору для решения сложившейся ситуации'));
        }

        $password = trim(Arr::get($this->post, 'password'));
        if (mb_strlen($password, 'UTF-8') < 6) {
            $this->error(__('Пароль не может содержать меньше 6 символов!'));
        }


        $data = [
            'email' => $email,
            'password' => $password,
            'ip' => System::getRealIP(),
        ];

        $mail = DB::select()
            ->from('mail_templates')
            ->join('mail_templates_i18n')
            ->on('mail_templates.id', '=', 'mail_templates_i18n.row_id')
            ->where('mail_templates.id', '=', 4)
            ->where('mail_templates.status', '=', 1)
            ->where('mail_templates_i18n.language', '=', \I18n::$lang)
            ->as_object()->execute()->current();
        if ($mail) {
            $data['status'] = 0;
            User::factory()->registration($data);
            $user = DB::select()->from('users')->where('email', '=', $email)->as_object()->execute()->current();

            // Save log
            $qName = 'Регистрация пользователя, требующая подтверждения';
            $url = '/wezom/users/edit/' . $user->id;
            Log::add($qName, $url, 1);

            $from = ['{{site}}', '{{ip}}', '{{date}}', '{{link}}'];
            $to = [
                Arr::get($_SERVER, 'HTTP_HOST'), Arr::get($data, 'ip'), date('d.m.Y'),
                HTML::link('/account/confirm/hash/' . $user->hash, true),
            ];
            $subject = str_replace($from, $to, $mail->subject);
            $text = str_replace($from, $to, $mail->text);
            Email::send($subject, $text, $user->email);

            $this->success(__('Вам отправлено письмо подтверждения со ссылкой, кликнув по которой, Вы подтвердите свой адрес и будете автоматически авторизованы на сайте.'));
        } else {
            $data['status'] = 1;
            User::factory()->registration($data);
            $user = DB::select()->from('users')->where('email', '=', $email)->as_object()->execute()->current();

            // Save log
            $qName = 'Регистрация пользователя';
            $url = '/wezom/users/edit/' . $user->id;
            Log::add($qName, $url, 1);

            Email::sendTemplate(13, [
                '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
                '{{ip}}' => Arr::get($data, 'ip'),
                '{{date}}' => date('d.m.Y'),
                '{{email}}' => $user->email,
                '{{password}}' => $password,
                '{{name}}' => $user->name,
            ], Arr::get($data, 'email'));

            // Authorization of the user
            User::factory()->auth($user, 0);
            Message::GetMessage(1, __('Вы успешно зарегистрировались на сайте! Пожалуйста укажите остальную информацию о себе в личном кабинете'), 5000);
            $this->success(['redirect' => '/account']);
        }
    }

    /**
     * Первый шаг оформления заказа
     */
    public function firstStepOrderAction()
    {
        $name = Arr::get($this->post, 'name');
        if (!$name) {
            $this->error(__('Укажите ФИО получателя!'));
        }

        $email = Arr::get($this->post, 'email');
        if (!$email) {
            $this->error(__('Укажите Email!'));
        }

        $phone = trim(Arr::get($this->post, 'phone'));
        if (!$phone) {
            $this->error(__('Номер телефона введен неверно!'));
        }

        $city = Arr::get($this->post, 'city');
        if (!$city) {
            $this->error(__('Город указан неверно либо не указан вовсе!'));
        }

        $ip = System::getRealIP();

        $count = Cart::factory()->_count_goods;
        if (!$count) {
            $this->error(__('Вы ничего не выбрали для покупки!'));
        }

        $data = [];
        $data['status'] = 0;
        $data['ip'] = $ip;
        $data['name'] = $name;
        $data['phone'] = $phone;
        $data['email'] = $email;
        $data['city'] = $city;
        $data['created_at'] = time();
        $data['user_lang'] = \I18n::$lang;
        if (User::info()) {
            $data['user_id'] = User::info()->id;
            $data['currencies'] = User::info()->currency_id;
        }

        $keys = [];
        $values = [];

        foreach ($data as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        $order_id = DB::insert('orders', $keys)->values($values)->execute();

        if (!$order_id) {
            $this->error(__('К сожалению, создать заказ не удалось. Пожалуйста повторите попытку через несколько секунд'));
        }

        $order_id = Arr::get($order_id, 0);

        Cookie::delete('order_id');
        Cookie::set('order_id', (int)$order_id, 60 * 60 * 24 * 365);

        $this->success([
            'success' => true,
            'showNextSteep' => true,
            'msg' => __('Успешно'),
        ]);
    }

    /**
     * Второй шаг оформление заказа
     */
    public function secondStepOrderAction()
    {
        $order_id = Cookie::get('order_id');

        if (!$order_id) {
            $this->error(__('Не указан номер заказа!'));
        }

        $delivery = Arr::get($this->post, 'delivery');
        if (!$delivery) {
            $this->error(__('Вы не указали тип доставки'));
        }

        $payment = Arr::get($this->post, 'payment');
        if (!$payment) {
            $this->error(__('Вы не выбрали способ оплаты!'));
        }

        $ip = System::getRealIP();

        $order = [];
        $order['status'] = 0;
        $order['delivery'] = $delivery;
        $order['payment'] = $payment;

        $update = DB::update('orders')->set($order)->where('id', '=', $order_id)->execute();

        /* Обновление корзины */
        $cart = Cart::factory()->get_list_for_basket();

        foreach ($cart as $item) {
            $obj = Arr::get($item, 'obj');
            $count = (int)Arr::get($item, 'count');
            $size_id = (int)Arr::get($item, 'size');
            if ($obj and $count) {
                $data = [];
                $data['order_id'] = $order_id;
                $data['catalog_id'] = $obj->id;
                $data['size_id'] = $size_id;
                $data['count'] = $count;
                $data['cost'] = $obj->cost;
                $keys = [];
                $values = [];
                foreach ($data as $key => $value) {
                    $keys[] = $key;
                    $values[] = $value;
                }
                DB::insert('orders_items', $keys)->values($values)->execute();
            }
        }

        if ($update) {
            $cart = Cart::factory()->get_list_for_basket();

            $link_user = 'http://' . Arr::get($_SERVER, 'HTTP_HOST') . '/account/orders';
            $link_admin = 'http://' . Arr::get($_SERVER, 'HTTP_HOST') . '/wezom/orders/edit/' . $order_id;

            $qName = 'Новый заказ';
            $url = '/wezom/orders/edit/' . $order_id;
            Log::add($qName, $url, 8);

            $order = Common::factory('orders')->getRow($order_id);

            $payments = Payments::getPayments();
            $delivery = Delivery::getDelivery();

            Email::sendTemplate(11, [
                '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
                '{{ip}}' => $ip,
                '{{date}}' => date('d.m.Y H:i'),
                '{{name}}' => $order->name,
                '{{phone}}' => $order->phone,
                '{{payment}}' => $payments[$order->payment],
                '{{delivery}}' => $delivery[$order->delivery],
                '{{link_admin}}' => $link_admin,
                '{{link_user}}' => $link_user,
                '{{items}}' => View::tpl(['cart' => $cart], 'Cart/ItemsMail'),
            ]);

            Email::sendTemplate(12, [
                '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
                '{{ip}}' => $ip,
                '{{date}}' => date('d.m.Y H:i'),
                '{{name}}' => $order->name,
                '{{phone}}' => $order->phone,
                '{{payment}}' => $payments[$order->payment],
                '{{delivery}}' => $delivery[$order->delivery],
                '{{link_admin}}' => $link_admin,
                '{{link_user}}' => $link_user,
                '{{items}}' => View::tpl(['cart' => $cart], 'Cart/ItemsMail'),
            ], $order->email);

            Cart::factory()->clear();
        }

        $this->success([
            'success' => true,
            'redirect' => HTML::link('cart/thank'),
            'msg' => __('Заказ был сформирован'),
        ]);
    }

    /**
     * Редактирование профиля пользователя
     */
    public function editProfileAction()
    {
        $name = trim(Arr::get($this->post, 'name'));
        if (!$name or mb_strlen($name, 'UTF-8') < 6) {
            $this->error(__('Введенное имя слишком короткое!'));
        }

        $email = Arr::get($this->post, 'email');
        if (!$email or !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->error(__('Вы неверно ввели E-Mail!'));
        }

        $check = DB::select([DB::expr('COUNT(users.id)'), 'count'])
            ->from('users')
            ->where('email', '=', $email)
            ->where('id', '!=', User::info()->id)
            ->as_object()->execute()->current();
        if (is_object($check) and $check->count) {
            $this->error(__('Пользователь с указанным E-Mail адресом уже зарегистрирован!'));
        }

        $phone = trim(Arr::get($this->post, 'phone'));
        if (!$phone) {
            $this->error('Номер телефона введен неверно!');
        }

        $address = trim(Arr::get($this->post, 'address'));
        if (!$address) {
            $this->error('Укажите адрес!');
        }

        $model = [];

        $model['name'] = $name;
        $model['email'] = $email;
        $model['phone'] = $phone;
        $model['address'] = $address;
        $model['updated_at'] = time();

        DB::update('users')->set($model)->where('id', '=', User::info()->id)->execute();

        Message::GetMessage(1, __('Вы успешно изменили свои данные!'), 3500);

        $this->success(['redirect' => '/account']);
    }

    /**
     * Замена пароля пользователя
     */
    public function change_passwordAction()
    {
        $currpass = Arr::get($this->post, 'currpass');
        if (!User::factory()->check_password($currpass, User::info()->password)) {
            $this->error(__('Старый пароль введен неверно!'));
        }

        $newpass = trim(Arr::get($this->post, 'newpass'));
        if (mb_strlen($newpass, 'UTF-8') < 6) {
            $this->error(__('Пароль не может быть короче 6 символов!'));
        }

        if (User::factory()->check_password($newpass, User::info()->password)) {
            $this->error(__('Нельзя поменять пароль на точно такой же!'));
        }

        $repeat = trim(Arr::get($this->post, 'repeat'));
        if ($newpass != $repeat) {
            $this->error(__('должны совпадать'));
        }

        User::factory()->update_password(User::info()->id, $newpass);

        Email::sendTemplate(6, [
            '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
            '{{ip}}' => System::getRealIP(),
            '{{date}}' => date('d.m.Y H:i'),
            '{{password}}' => $newpass,
        ], User::info()->email);

        $this->success(__('На указанный E-Mail адрес высланы новые данные для входа'));
    }

    /**
     * Востановление пароля пользователя
     */
    public function forgot_passwordAction()
    {
        $email = Arr::get($this->post, 'email');
        if (!$email or !filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $this->error(__('Вы неверно ввели E-Mail!'));
        }
        $user = Common::factory('users')->getRow($email, 'email');
        if (!$user) {
            $this->error(__('Пользователя с указанным E-Mail адресом не существует!'));
        }
        if (!$user->status) {
            $this->error(__('Пользователь с указанным E-Mail адресом либо заблокирован либо не подтвердил E-Mail адрес. Пожалуйста обратитесь к Администратору для решения сложившейся ситуации'));
        }

        $password = User::factory()->generate_random_password();
        User::factory()->update_password($user->id, $password);

        Email::sendTemplate(5, [
            '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
            '{{ip}}' => System::getRealIP(),
            '{{date}}' => date('d.m.Y H:i'),
            '{{password}}' => $password,
        ], $user->email);

        $this->success(__('На указанный E-Mail адрес выслан новый пароль для входа'));
    }

    /**
     * Добавление Т/С пользователя
     */
    public function addTransportAction()
    {
        $gos_number = Arr::get($this->post, 'gos_number');
        if (!$gos_number) {
            $this->error(__('Не указан ГОС номер'));
        }
        $mark = Arr::get($this->post, 'mark');
        if (!$mark) {
            $this->error(__('Не указана марка машины'));
        }
        $mod = Arr::get($this->post, 'model');
        if (!$mod) {
            $this->error(__('Нет модели транспортного средства'));
        }
        $year = Arr::get($this->post, 'year');
        if (!$year) {
            $this->error(__('Не указан год выпуска'));
        }
        $vin = Arr::get($this->post, 'vin');
        if (!$vin) {
            $this->error(__('Укажите VIN'));
        }

        $model = [];

        $model['gos_number'] = $gos_number;
        $model['mark'] = $mark;
        $model['model'] = $mod;
        $model['year'] = $year;
        $model['vin'] = $vin;
        $model['created_at'] = time();
        $model['user_id'] = User::info()->id;

        $keys = [];
        $values = [];

        foreach ($model as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        DB::insert('users_transport', $keys)->values($values)->execute();

        $this->success(['response' => __('Транспортное средство добавлено'), 'redirect' => '/account']);
    }

    /**
     * Форма подбора
     */
    public function pickingAction()
    {
        $artikul = Arr::get($this->post, 'artikul');
        if (!$artikul) {
            $this->error(__('Укажите наименование детали либо артикул'));
        }
        $name = Arr::get($this->post, 'name');
        if (!$name) {
            $this->error(__('Вы не указали имя'));
        }
        $phone = Arr::get($this->post, 'phone');
        if (!$phone) {
            $this->error(__('Не указан телефон'));
        }

        $model = [];

        $model['artikul'] = $artikul;
        $model['name'] = $name;
        $model['phone'] = $phone;
        $model['created_at'] = time();
        $model['updated_at'] = time();
        $model['status'] = 0;
        $model['ip'] = System::getRealIP();

        $keys = [];
        $values = [];

        foreach ($model as $key => $value) {
            $keys[] = $key;
            $values[] = $value;
        }

        $result = DB::insert('picking', $keys)->values($values)->execute();
        $lastID = Arr::get($result, 0);
        if (!$result) {
            $this->error(__('Произошла ошибка'));
        }

        $qName = __('Сообщение из формы подбора');
        $url = '/wezom/picking/edit/' . $lastID;
        Log::add($qName, $url, 2);

        Email::sendTemplate(1, [
            '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
            '{{name}}' => Arr::get($model, 'name'),
            '{{phone}}' => Arr::get($model, 'phone'),
            '{{artikul}}' => Arr::get($model, 'artikul'),
            '{{ip}}' => Arr::get($model, 'ip'),
            '{{date}}' => date('d.m.Y H:i'),
        ]);

        $this->success(['response' => __('Запрос был сформирован')]);
    }

    /**
     * Заказ в Один-клик
     */
    public function simpleAction()
    {
        $id = Arr::get($this->post, 'catalog');
        if (!$id) {
            $this->error(__('Такой товар не существует!'));
        }
        $item = CommonI18n::factory('catalog')->getRow($id);
        $item = $item['obj'];
        if (!$item) {
            $this->error(__('Такой товар не существует!'));
        }
        $phone = trim(Arr::get($this->post, 'phone'));
        if (!$phone) {
            $this->error(__('Номер телефона введен неверно!'));
        }

        $ip = System::getRealIP();
        $check = DB::select([DB::expr('orders_simple.id'), 'count'])
            ->from('orders_simple')
            ->where('ip', '=', $ip)
            ->where('catalog_id', '=', $id)
            ->where('created_at', '>', time() - 60)
            ->as_object()->execute()->current();
        if (is_object($check) and $check->count) {
            $this->error(__('Вы только что заказали этот товар! Пожалуйста, повторите попытку через минуту'));
        }

        $keys = ['ip', 'phone', 'catalog_id', 'user_id', 'created_at'];
        $values = [$ip, $phone, $item->id, User::info() ? User::info()->id : 0, time()];
        $lastID = DB::insert('orders_simple', $keys)->values($values)->execute();
        $lastID = Arr::get($lastID, 0);

        $link = 'http://' . Arr::get($_SERVER, 'HTTP_HOST') . '/' . $item->alias . '/p' . $item->id;
        $link_admin = 'http://' . Arr::get($_SERVER, 'HTTP_HOST') . '/wezom/catalog/edit/' . $item->id;

        $qName = 'Заказ в один клик';
        $url = '/wezom/simple/edit/' . $lastID;
        Log::add($qName, $url, 7);

        Email::sendTemplate(8, [
            '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
            '{{ip}}' => $ip,
            '{{date}}' => date('d.m.Y H:i'),
            '{{phone}}' => $phone,
            '{{link}}' => $link,
            '{{admin_link}}' => $link_admin,
            '{{item_name}}' => $item->name,
        ]);

        $this->success(__('Вы успешно оформили заказ в один клик! Оператор свяжется с Вами в скором времени'));
    }

    /**
     * Оформление заказа отсутсвующего товара
     */
    public function emptyOrderAction()
    {
        $id = Arr::get($this->post, 'catalog');
        if (!$id) {
            $this->error(__('Такой товар не существует!'));
        }
        $item = Items::getRow($id);
        if (!$item) {
            $this->error(__('Такой товар не существует!'));
        }
        $phone = trim(Arr::get($this->post, 'phone'));
        if (!$phone) {
            $this->error(__('Номер телефона введен неверно!'));
        }

        $ip = System::getRealIP();
        $check = DB::select([DB::expr('orders_empty.id'), 'count'])
            ->from('orders_empty')
            ->where('ip', '=', $ip)
            ->where('catalog_id', '=', $id)
            ->where('created_at', '>', time() - 60)
            ->as_object()->execute()->current();
        if (is_object($check) and $check->count) {
            $this->error(__('Вы только что заказали этот товар! Пожалуйста, повторите попытку через минуту'));
        }


        $keys = ['ip', 'phone', 'catalog_id', 'user_id', 'created_at'];
        $values = [$ip, $phone, $item->id, User::info() ? User::info()->id : 0, time()];
        $lastID = DB::insert('orders_empty', $keys)->values($values)->execute();
        $lastID = Arr::get($lastID, 0);

        $link = 'http://' . Arr::get($_SERVER, 'HTTP_HOST') . '/' . $item->alias . '/p' . $item->id;
        $link_admin = 'http://' . Arr::get($_SERVER, 'HTTP_HOST') . '/wezom/catalog/edit/' . $item->id;

        $qName = 'Заказ в отстутсвующего товара';
        $url = '/wezom/simple/edit/' . $lastID;
        Log::add($qName, $url, 7);

        Email::sendTemplate(8, [
            '{{site}}' => Arr::get($_SERVER, 'HTTP_HOST'),
            '{{ip}}' => $ip,
            '{{date}}' => date('d.m.Y H:i'),
            '{{phone}}' => $phone,
            '{{link}}' => $link,
            '{{admin_link}}' => $link_admin,
            '{{item_name}}' => $item->name,
        ]);

        $this->success(__('Оператор свяжется с Вами в скором времени'));
    }

}