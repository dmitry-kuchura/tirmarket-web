<?php

namespace Modules\User\Models;

use Core\Common;
use Core\QB\DB;
use I18n;

class Users extends Common
{

    public static $table = 'users';

    public static function getFavorites($id)
    {
        $table = 'catalog';
        $tableI18n = $table . '_i18n';

        $favorites = DB::select(
            $tableI18n . '.*',
            $table . '.*'
        )
            ->from($table)
            ->join('users_favorites', 'LEFT')->on('users_favorites.product_id', '=', $table . '.id')
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->where($tableI18n . '.language', '=', I18n::$lang)
            ->where('users_favorites.user_id', '=', $id)
            ->find_all();

        return $favorites;
    }

    public static function getUserTransport($id)
    {

    }

}