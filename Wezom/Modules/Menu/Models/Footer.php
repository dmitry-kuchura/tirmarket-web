<?php

namespace Wezom\Modules\Menu\Models;

use Core\Arr;
use Core\Message;
use Core\QB\DB;

class Footer extends \Core\CommonI18n
{

    public static $table = 'footermenu';
    public static $rules = [];

    public static function valid($data = [])
    {
        static::$rulesI18n = [
            'name' => [
                [
                    'error' => __('Название не может быть пустым! (:lang)'),
                    'key' => 'not_empty',
                ],
            ],
        ];
        static::$rules = [
            'url' => [
                [
                    'error' => __('Ссылка не может быть пустой!'),
                    'key' => 'not_empty',
                ],
                [
                    'error' => __('Ссылка должна содержать только латинские буквы в нижнем регистре, цифры, "/", "?", "&", "=", "-" или "_"!'),
                    'key' => 'regex',
                    'value' => '/^[a-z0-9\-_\/\?\=\&]*$/',
                ],
            ],
        ];
        return parent::valid($data);
    }

    public static function getRows($status = NULL, $sort = NULL, $type = NULL, $limit = NULL, $offset = NULL, $filter = true)
    {
        $lang = \I18n::$lang;
        if (APPLICATION == 'backend') {
            $lang = \I18n::$default_lang_backend;
        }
        static::$tableI18n = static::$table . '_i18n';
        if ($sort) {
            $arr = explode('.', $sort);
            if (count($arr) < 2) {
                $sort = static::$table . '.' . $sort;
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
        if ($status <> NULL) {
            $result->where(static::$table . '.status', '=', $status);
        }
        $result->order_by(static::$table . '.parent_id', 'ASC');
        if ($sort <> NULL) {
            if ($type <> NULL) {
                $result->order_by($sort, $type);
            } else {
                $result->order_by($sort);
            }
        }
        $result->order_by(static::$table . '.id', 'DESC');
        if ($limit <> NULL) {
            $result->limit($limit);
            if ($offset <> NULL) {
                $result->offset($offset);
            }
        }
        return $result->find_all();
    }

}