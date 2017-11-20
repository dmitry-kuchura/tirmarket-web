<?php

namespace Modules\Api\Controllers;

use Core\QB\DB;
use Modules\Ajax;

class Image extends Ajax
{
    public function uploadImageFileAction()
    {
        $file = HOST . "/image.csv";
        ini_set('max_execution_time', 900);

        // чекаем файл, если есть чистим БД и записываем туда, удаляем файл
        $handle = fopen($file, "r");
        if ($handle) {
            $lines = file($file, FILE_IGNORE_NEW_LINES);
            DB::delete('query')->execute();

            foreach ($lines as $line) {
                $row = explode(',', $line);

                $data = [];
                $data['status'] = 1;
                $data['artikul'] = str_replace('"', '', $row[0]);
                $data['image'] = str_replace('"', '', $row[1]);

                $keys = [];
                $values = [];

                foreach ($data as $key => $value) {
                    $keys[] = $key;
                    $values[] = $value;
                }

                DB::insert('query', $keys)->values($values)->execute();
            }
        }

        @unlink($file);
    }
}
