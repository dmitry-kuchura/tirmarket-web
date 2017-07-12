<?php

$data = [
    0 => [
        "id" => "1",
        "link" => "#",
        "image" => "pic/search-1.png",
        "price" => "100 530",
        "title" => "Моторное масло Total Quartz INEO MC3 5W-30 5 л (9106) "
    ],
    1 => [
        "id" => "2",
        "link" => "#",
        "image" => "pic/search-1.png",
        "price" => "100 530",
        "disable-price" => "2 530",
        "title" => "Тормозная система"
    ],
    2 => [
        "id" => "3",
        "link" => "#",
        "image" => "pic/search-1.png",
        "price" => "100 530",
        "disable-price" => "4 530",
        "title" => "Моторное масло Castrol Magnatec Diesel 5W-40 DPF 1 л "
    ],
    3 => [
        "id" => "4",
        "link" => "#",
        "image" => "pic/search-1.png",
        "price" => "100 530",
        "title" => "Моторное масло Total Quartz INEO MC3 5W-30 5 л (9106) "
    ],
    4 => [
        "id" => "5",
        "link" => "#",
        "image" => "pic/search-1.png",
        "price" => "100 530",
        "disable-price" => "7 530",
        "title" => "Тормозная система"
    ],
    5 => [
        "id" => "6",
        "link" => "#",
        "image" => "pic/search-1.png",
        "price" => "100 530",
        "title" => "Моторное масло Castrol Magnatec Diesel 5W-40 DPF 1 л"
    ]
];

$rand_keys = array_rand($data, rand(2, 5));

$result = [];

foreach ($rand_keys as $key => $value) {
    array_push($result, $data[$value]);
}

die(json_encode($result));