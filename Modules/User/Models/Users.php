<?php

namespace Modules\User\Models;

use Core\Common;
use Core\Cookie;
use Core\QB\DB;
use I18n;

class Users extends Common
{

    public static $table = 'users';

    public static function getFavorites()
    {
        $ids = Cookie::getArray('favorites', []);

        $table = 'catalog';
        $tableI18n = $table . '_i18n';

        $favorites = DB::select(
            $tableI18n . '.*',
            $table . '.*'
        )
            ->from($table)
            ->join($tableI18n, 'LEFT')->on($tableI18n . '.row_id', '=', $table . '.id')
            ->where($tableI18n . '.language', '=', I18n::$lang)
            ->where($table.'.id', 'IN', $ids)
            ->find_all();

        return $favorites;
    }

}