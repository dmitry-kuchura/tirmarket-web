<?php

namespace Wezom\Modules\Content\Models;

use Core\CommonI18n;

class Maps extends CommonI18n
{

    public static $table = 'maps';
    public static $image = 'maps';
    public static $filters = [
        'name' => [
            'table' => 'maps_i18n',
            'action' => 'LIKE',
        ],
    ];
    public static $rulesI18n;
    public static $rules;

    public static function valid($post)
    {
        static::$rulesI18n = [
            'name' => [
                [
                    'error' => __('Название не может быть пустым! (:lang)'),
                    'key' => 'not_empty',
                ],
            ],
        ];

        return parent::valid($post);
    }

}