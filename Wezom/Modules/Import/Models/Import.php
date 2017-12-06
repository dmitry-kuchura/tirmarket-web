<?php

namespace Wezom\Modules\Import\Models;

use Core\QB\DB;
use Core\Common;

class Import extends Common
{
    public static $table = 'query';

    public static function countWorkerJob($status = 1)
    {
        $result = DB::select([DB::expr('COUNT(' . static::$table . '.id)'), 'count'], static::$table . '.type')
            ->from(static::$table)
            ->where(static::$table . '.status', '=', 0)
            ->group_by(static::$table . '.type')
            ->execute(null, true);

        $data = [];

        foreach ($result as $obj) {
            $data[$obj->type] = $obj->count;
        }

        $description = [
            'products' => 'Товары',
            'categories' => 'Категории',
            'prices' => 'Цены',
            'brands' => 'Бренды',
            'image' => 'Изображения',
        ];

        $worker = '[';

        foreach ($data as $key => $value) {
            $worker .= '{"name": "' . $description[$key] . '", "y": ' . $value . '},';
        }

        $worker .= ']';

        return $worker;
    }

    public static function countQuery()
    {
        $result = DB::select([DB::expr('COUNT(' . static::$table . '.id)'), 'count'], static::$table . '.type')
            ->from(static::$table)
            ->where(static::$table . '.status', '=', 1)
            ->group_by(static::$table . '.type')
            ->execute(null, true);

        $data = [];

        foreach ($result as $obj) {
            $data[$obj->type] = $obj->count;
        }

        $description = [
            'products' => 'Товары',
            'categories' => 'Категории',
            'prices' => 'Цены',
            'brands' => 'Бренды',
            'image' => 'Изображения',
        ];

        $query = '[';

        foreach ($data as $key => $value) {
            $query .= '{"name": "' . $description[$key] . '", "y": ' . $value . '},';
        }

        $query .= ']';

        return $query;
    }

    public static function getLog()
    {
        $result = DB::select()
            ->from('query_log')
            ->order_by('id', 'DESC')
            ->find_all();

        return $result;
    }

    public static function checkQuery()
    {
        $result = DB::select([DB::expr('COUNT(' . static::$table . '.id)'), 'count'], static::$table . '.type')
            ->from(static::$table)
            ->where(static::$table . '.status', '=', 1)
            ->group_by(static::$table . '.type')
            ->execute(null, true);

        $query = [];

        foreach ($result as $obj) {
            $query[$obj->type] = $obj->count;
        }

        return $query;
    }
}