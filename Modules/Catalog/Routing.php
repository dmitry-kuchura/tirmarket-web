<?php

return [
    'favorites' => 'catalog/favorites/index',
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