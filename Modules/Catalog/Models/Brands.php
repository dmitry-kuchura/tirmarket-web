<?php

namespace Modules\Catalog\Models;

use Core\Common;
use Core\CommonI18n;
use Core\QB\DB;

class Brands extends CommonI18n
{

    public static $table = 'brands';
    public static $tableI18n = 'brands';

    public static function getRows($status = null, $sort = null, $type = null, $limit = null, $offset = null, $filter = true)
    {
        $lang = \I18n::$lang;
        if (APPLICATION == 'backend') {
            $lang = \I18n::$default_lang_backend;
        }
        static::$tableI18n = static::$table . '_i18n';
        if ($sort) {
            $arr = explode('.', $sort);
            if (count($arr) < 2) {
                $sort = static::$tableI18n . '.' . $sort;
            }
        }
        $result = DB::select(
            static::$tableI18n . '.*', static::$table . '.*'
        )
            ->from(static::$table)
            ->join(static::$tableI18n, 'LEFT')->on(static::$tableI18n . '.row_id', '=', static::$table . '.id')
            ->where(static::$tableI18n . '.language', '=', $lang);
        if ($filter) {
            $result = static::setFilter($result);
        }
        if ($status <> null) {
            $result->where(static::$table . '.status', '=', $status);
        }
        if ($sort <> null) {
            if ($type <> null) {
                $result->order_by($sort, $type);
            } else {
                $result->order_by($sort);
            }
        }
        if ($limit <> null) {
            $result->limit($limit);
            if ($offset <> null) {
                $result->offset($offset);
            }
        }
        return $result->find_all();
    }
}