<?php
return [
    // Watermark path
    'watermark' => 'pic/logo.png',
    // Image types
    'types' => [
        'jpg', 'jpeg', 'png', 'gif',
    ],
    // Delivery images
    'delivery' => [
        [
            'path' => 'original',
            'resize' => 0,
            'crop' => 0,
        ],
    ],
    // Slider images
    'slider' => [
        [
            'path' => 'small',
            'width' => 200,
            'height' => 70,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'big',
            'width' => 1366,
            'height' => 321,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'original',
            'resize' => 0,
            'crop' => 0,
        ],
    ],
    // News images
    'news' => [
        [
            'path' => 'small',
            'width' => 326,
            'height' => 268,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'big',
            'width' => 673,
            'height' => 554,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'inner',
            'width' => 650,
            'height' => 325,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'original',
            'resize' => 0,
            'crop' => 0,
        ],
    ],
    // Partners images
    'partners' => [
        [
            'path' => 'original',
            'resize' => 0,
            'crop' => 0,
        ],
    ],
    // Catalog groups images
    'catalog_tree' => [
        [
            'path' => 'small',
            'width' => 305,
            'height' => 271,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'popular',
            'resize' => 0,
            'crop' => 0,
        ],
        [
            'path' => 'original',
            'resize' => 0,
            'crop' => 0,
        ],
    ],
    // Products images
    'catalog' => [
        [
            'path' => 'thumb',
            'width' => 58,
            'height' => 58,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'medium',
            'width' => 232,
            'height' => 195,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'main',
            'width' => 350,
            'height' => 410,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'search',
            'width' => 49,
            'height' => 67,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'item',
            'width' => 305,
            'height' => 250,
            'resize' => 1,
            'crop' => 1,
        ],
        [
            'path' => 'original',
            'resize' => 0,
            'crop' => 0,
        ],

    ],
];