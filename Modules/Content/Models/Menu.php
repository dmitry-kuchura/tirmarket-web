<?php

namespace Modules\Content\Models;

use I18n;
use Core\CommonI18n;
use Core\QB\DB;

class Menu extends CommonI18n
{
    public static $table = 'catalog_tree';
    public static $tableI18n = 'catalog_tree_i18n';

    public static function getTopMenu()
    {
        $result = DB::select(
            static::$tableI18n . '.*',
            static::$table . '.*'
        )
            ->from(static::$table)
            ->join(static::$tableI18n, 'LEFT')->on(static::$tableI18n . '.row_id', '=', static::$table . '.id')
            ->where(static::$tableI18n . '.language', '=', I18n::$lang)
            ->where(static::$table . '.top_menu', '=', 1)
            ->find_all();

        return $result;
    }

    public static function contentMenu()
    {
        $result = CommonI18n::factory('sitemenu')->getRows(1, 'sort');

        return $result;
    }

    public static function getFooterMenu()
    {
        $array = [];
        $left = [];
        $right = [];

        $result = $result = CommonI18n::factory('footermenu')->getRows(1, 'sort');

        foreach ($result as $obj) {
            if ($obj->parent_id == 1) {
                $right[] = $obj;
            } else {
                $left[] = $obj;
            }
        }

        $array['left'] = $left;
        $array['right'] = $right;

        return $array;
    }
}