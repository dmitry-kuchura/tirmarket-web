<?php

return [
    // Orders
    'wezom/orders/index' => 'orders/orders/index',
    'wezom/orders/index/page/<page:[0-9]*>' => 'orders/orders/index',
    'wezom/orders/edit/<id:[0-9]*>' => 'orders/orders/edit',
    'wezom/orders/delete/<id:[0-9]*>' => 'orders/orders/delete',
    'wezom/orders/print/<id:[0-9]*>' => 'orders/orders/print',
    'wezom/orders/add_position/<id:[0-9]*>' => 'orders/orders/addPosition',
    'wezom/orders/add' => 'orders/orders/add',
    // Simple orders
    'wezom/simple/index' => 'orders/simple/index',
    'wezom/simple/index/page/<page:[0-9]*>' => 'orders/simple/index',
    'wezom/simple/edit/<id:[0-9]*>' => 'orders/simple/edit',
    'wezom/simple/delete/<id:[0-9]*>' => 'orders/simple/delete',
    // Simple orders
    'wezom/no/index' => 'orders/no/index',
    'wezom/no/index/page/<page:[0-9]*>' => 'orders/no/index',
    'wezom/no/edit/<id:[0-9]*>' => 'orders/no/edit',
    'wezom/no/delete/<id:[0-9]*>' => 'orders/no/delete',
    // Delivery
    'wezom/delivery/index' => 'orders/delivery/index',
    'wezom/delivery/index/page/<page:[0-9]*>' => 'orders/delivery/index',
    'wezom/delivery/edit/<id:[0-9]*>' => 'orders/delivery/edit',
    'wezom/delivery/delete/<id:[0-9]*>' => 'orders/delivery/delete',
    'wezom/delivery/delete_image/<id:[0-9]*>' => 'orders/delivery/deleteImage',
    'wezom/delivery/add' => 'orders/delivery/add',
    // Delivery
    'wezom/payments/index' => 'orders/payments/index',
    'wezom/payments/index/page/<page:[0-9]*>' => 'orders/payments/index',
    'wezom/payments/edit/<id:[0-9]*>' => 'orders/payments/edit',
    'wezom/payments/delete/<id:[0-9]*>' => 'orders/payments/delete',
    'wezom/payments/add' => 'orders/payments/add',
];
