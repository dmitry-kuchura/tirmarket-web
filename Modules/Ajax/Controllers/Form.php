<?php

namespace Modules\Ajax\Controllers;

use Core\GeoIP;
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
                ->or_where('date', '=', NULL)
                ->and_where_close()
                ->find_all();
            if (sizeof($bans)) {
                $this->error(__('К сожалению это действие недоступно, т.к. администратор ограничил доступ к сайту с Вашего IP адреса!'));
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
     * User registration
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
        if (mb_strlen($password, 'UTF-8') < 8) {
            $this->error(__('Пароль не может содержать меньше 8 символов!'));
        }


        // Create user data
        $data = [
            'email' => $email,
            'password' => $password,
            'ip' => System::getRealIP(),
        ];

        // Create user. Then send an email to user with confirmation link or authorize him to site
        $mail = DB::select()
            ->from('mail_templates')
            ->join('mail_templates_i18n')
            ->on('mail_templates.id', '=', 'mail_templates_i18n.row_id')
            ->where('mail_templates.id', '=', 4)
            ->where('mail_templates.status', '=', 1)
            ->where('mail_templates_i18n.language', '=', \I18n::$lang)
            ->as_object()->execute()->current();
        if ($mail) {
            // Creating of the new user and set his status to zero. He need to confirm his email
            $data['status'] = 0;
            User::factory()->registration($data);
            $user = DB::select()->from('users')->where('email', '=', $email)->as_object()->execute()->current();

            // Save log
            $qName = 'Регистрация пользователя, требующая подтверждения';
            $url = '/wezom/users/edit/' . $user->id;
            Log::add($qName, $url, 1);

            // Sending letter to email
            $from = ['{{site}}', '{{ip}}', '{{date}}', '{{link}}'];
            $to = [
                Arr::get($_SERVER, 'HTTP_HOST'), Arr::get($data, 'ip'), date('d.m.Y'),
                'http://' . Arr::get($_SERVER, 'HTTP_HOST') . '/account/confirm/hash/' . $user->hash,
            ];
            $subject = str_replace($from, $to, $mail->subject);
            $text = str_replace($from, $to, $mail->text);
            Email::send($subject, $text, $user->email);

            // Inform user if mail is sended
            $this->success(__('Вам отправлено письмо подтверждения со ссылкой, кликнув по которой, Вы подтвердите свой адрес и будете автоматически авторизованы на сайте.'));
        } else {
            // Creating of the new user and set his status to 1. He must be redirected to his cabinet
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
                '{{name}}' => $user->name
            ], Arr::get($data, 'email'));

            // Authorization of the user
            User::factory()->auth($user, 0);
            Message::GetMessage(1, __('Вы успешно зарегистрировались на сайте! Пожалуйста укажите остальную информацию о себе в личном кабинете для того, что бы мы могли обращаться к Вам по имени'), 5000);
            $this->success(['redirect' => '/account']);
        }
    }
}