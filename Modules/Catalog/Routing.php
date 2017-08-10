<?php

return [
    'favorites' => 'catalog/favorites/index',
    // Catalog unique aliases routing
    'new' => 'catalog/novelty/index',
    'new/page/<page:[0-9]*>' => 'catalog/novelty/index',
    'popular' => 'catalog/popular/index',
    'popular/page/<page:[0-9]*>' => 'catalog/popular/index',
    'sale' => 'catalog/sale/index',
    'sale/page/<page:[0-9]*>' => 'catalog/sale/index',
    'viewed' => 'catalog/viewed/index',
    'viewed/page/<page:[0-9]*>' => 'catalog/viewed/index',
    // Catalog groups routing
    'products' => 'catalog/catalog/index',
    'products/page/<page:[0-9]*>' => 'catalog/catalog/index',
    'products/<alias>' => 'catalog/catalog/groups',
    'products/<alias>/page/<page:[0-9]*>' => 'catalog/catalog/groups',
    'products/<alias:[0-9a-z_-]*>/<filter:[\w\W]*>page/<page:[0-9]*>' => 'catalog/catalog/groups',
    'products/<alias:[0-9a-z_-]*>/<filter:[\w\W]*>' => 'catalog/catalog/groups',
    'products/<alias:[0-9a-z_-]*>/<filter:[\w\W]*>/page/<page:[0-9]*>' => 'catalog/catalog/groups',
    // Products routing
    '<alias>/p<id:[0-9]*>' => 'catalog/product/index',
    // Brands routing
    'brands' => 'catalog/brands/index',
    'brands/<alias>' => 'catalog/brands/inner',
    'brands/<alias>/page/<page:[0-9]*>' => 'catalog/brands/inner',
    'export/yml' => 'catalog/export/yml',
];