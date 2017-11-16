<?php

return [
    'statuses' => [
        0 => __('Новый'),
        1 => __('В работе'),
        2 => __('Выполнен'),
        3 => __('Отменен'),
    ],
    'st_classes' => [
        0 =>  'status--default',
        1 =>  'status--wait',
        2 =>  'status--success',
        3 =>  'status--danger',
    ],
    'payment' => [
        1 => __('Наложенный платеж (оплата при получении)'),
        2 => __('Оплата на карту Приватбанка'),
    ],
    'delivery' => [
        1 => __('Самовывоз'),
        2 => __('На отделение Новой почты'),
    ],
];