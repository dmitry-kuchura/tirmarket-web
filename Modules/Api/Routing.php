<?php

return [
//    'api/category/<id>' => 'api/categories/getCategory',
//    'api/product/<id>' => 'api/products/getCurrentProduct',
//    'api/brand/<id>' => 'api/api/getBrand',
//    'api/stock/<id>' => 'api/api/getStock',
//    'api/stocks' => 'api/api/getStocks',
//    'api/queue' => 'api/api/getQueue',
//    'api/queue-insert' => 'api/api/insertQueue',
//    'api/prices-types' => 'api/api/getPricesTypes',
//    'api/count' => 'api/api/getStockCount',
//    'api/models' => 'api/api/getModels',
//    'api/users' => 'api/api/getUsers',
//    'api/currencies' => 'api/api/getCurrencies',
//    'api/orders' => 'api/api/getOrders',
//    'api/put-orders' => 'api/api/putOrders',
//    'api/insert-image' => 'api/api/insertImage',
//    'api/upload-image' => 'api/api/uploadImage',
//    'api/get-invoices' => 'api/api/getInvoices',
//    'api/image-from-file' => 'api/image/uploadImageFile',


    'api/v2/products' => 'api/query/getProducts',
    'api/v2/categories' => 'api/query/getCategories',
    'api/v2/brands' => 'api/query/getBrands',
    'api/v2/prices' => 'api/query/getPrices',

    // разгрузка очереди
    'api/v2/worker' => 'api/worker/job',
    'api/v2/worker-manual' => 'api/worker/manualJob'
];