<?php

namespace Wezom\Modules\Content\Models;

use Core\CommonI18n;

class Partners extends CommonI18n
{

    public static $table = 'partners';
    public static $image = 'partners';
    public static $filters = [
        'name' => [
            'table' => 'partners_i18n',
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