<?php

/**
 * Импорт из 1С
 *
 * 1. Список всех категорий 'api/categories'
 * 2. Обновление конкретной категории 'api/category' (передается параметр import_id как id)
 *
 * 3. Список всех товаров 'api/products'
 * 4. Обновление конкретного товара 'api/product' (как и в случае с категориями передается параметр import_id как id)
 *
 * 5. Обновление брендов из 1С api/brands'
 * 6. Обновление выбраного бренда из 1С api/brand' (передается параметр import_id как id)
 *
 */

return [
    'api/categories' => 'api/api/getCategories',
    'api/category/<id>' => 'api/api/getCategory',

    'api/products' => 'api/api/getProducts',
    'api/product/<id>' => 'api/api/getCurrentProduct',

    'api/brands' => 'api/api/getBrands',
    'api/brand/<id>' => 'api/api/getBrand',

    'api/stock/<id>' => 'api/api/getStock',

    'api/stocks' => 'api/api/getStocks',

    'api/prices' => 'api/api/getPrices',
    'api/queue' => 'api/api/getQueue',
    'api/queue-insert' => 'api/api/insertQueue',
    'api/prices-types' => 'api/api/getPricesTypes',

    'api/count' => 'api/api/getStockCount',

    'api/models' => 'api/api/getModels',

    'api/users' => 'api/api/getUsers',

    'api/currencies' => 'api/api/getCurrencies',

    'api/orders' => 'api/api/getOrders',
    'api/put-orders' => 'api/api/putOrders',

    'api/insert-image' => 'api/api/insertImage',
    'api/upload-image' => 'api/api/uploadImage'
];