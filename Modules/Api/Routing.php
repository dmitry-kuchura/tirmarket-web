<?php

return [
    'api/categories' => 'api/api/getCategories',
    'api/category/<id>' => 'api/api/getCategory',
    'api/products' => 'api/api/getProducts',
    'api/product/<id>' => 'api/api/getCurrentProduct',
    'api/brands' => 'api/api/getBrands',
    'api/stocks' => 'api/api/getStocks',
    'api/prices' => 'api/api/getPrices',
    'api/prices-types' => 'api/api/getPricesTypes',
    'api/count' => 'api/api/getStockCount',
    'api/models' => 'api/api/getModels',
    'api/update' => 'api/api/updateParent',
];