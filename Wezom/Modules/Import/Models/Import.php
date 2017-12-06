<?php

namespace Wezom\Modules\Import\Models;

use Core\QB\DB;
use Core\Common;

class Import extends Common
{
    public static $table = 'query';

    public static function countProductsInQuery($status = 1)
    {
        $result = DB::select([DB::expr('COUNT(' . static::$table . '.id)'), 'count'])
            ->from(static::$table)
            ->where(static::$table . '.type', 'LIKE', 'products');
        if ($status !== null) {
            $result->where(static::$table . '.status', '=', $status);
        }

        return $result->count_all();
    }

    public static function countCategoriesInQuery($status = 1)
    {
        $result = DB::select([DB::expr('COUNT(' . static::$table . '.id)'), 'count'])
            ->from(static::$table)
            ->where(static::$table . '.type', 'LIKE', 'categories');
        if ($status !== null) {
            $result->where(static::$table . '.status', '=', $status);
        }

        return $result->count_all();
    }

    public static function countQuery()
    {
        $result = DB::select([DB::expr('COUNT(' . static::$table . '.id)'), 'count'])
            ->from(static::$table)
            ->where(static::$table . '.status', '=', 1);

        return $result->count_all();
    }
}