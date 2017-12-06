<?php

namespace Modules\Api\Models;

use Core\Arr;
use Core\Common;
use Core\Config;
use Core\HTML;
use Core\Files;
use Core\QB\DB;
use Core\CommonI18n;
use Core\SimpleImage;
use Exception;

class Image extends CommonI18n
{
    /**
     * @param $obj
     * @throws Exception
     */
    public static function uploadPhoto($obj)
    {
        $find = DB::select()->from('catalog')->where('artikul', '=', $obj->artikul)->find();

        if ($find) {
            $path = self::downloadImage($obj);
            $filename = self::uploadImageFromFile($path, $obj);

            Common::factory('catalog')->update(['image' => $filename], $find->id);

            $data = [
                'catalog_id' => $find->id,
                'image' => $filename,
                'main' => 1,
            ];
            Common::factory('catalog_images')->insert($data);
        }
    }

    /**
     * Загрузка изображения
     *
     * @param $obj
     * @return string
     */
    public static function downloadImage($obj)
    {
        $image = str_replace('http://tirmarket.com.ua/all', '', $obj->image);
        $path = HOST . HTML::media(DS . 'images/temp' . $image, false);

        $url = explode('/', $image);
        $tempPath = HOST . HTML::media(DS . 'images/temp' . DS . $url[1], false);

        Files::createFolder($tempPath, 0777);

        file_put_contents($path, file_get_contents($obj->image));

        return $path;
    }

    /**
     * Прикрепление изображения к товару
     *
     * @param $pathImage
     * @param $obj
     * @return bool|string
     * @throws Exception
     */
    public static function uploadImageFromFile($pathImage, $obj)
    {
        $image = str_replace('http://tirmarket.com.ua/all', '', $obj->image);

        $ext = explode('/', $image);
        $ext = explode('.', $ext[2]);
        $ext = $ext[1];

        if (!filesize($pathImage)) {
            return false;
        }

        $need = Config::get('images.catalog');
        $filename = md5($obj->image . time()) . '.' . strtolower($ext);

        foreach ($need AS $one) {
            $image = SimpleImage::factory($pathImage)->auto_orient();
            $path = HOST . HTML::media(DS . 'images' . DS . 'catalog' . DS . Arr::get($one, 'path'), false);

            Files::createFolder($path, 0777);
            $file = $path . DS . $filename;
            $new_width = Arr::get($one, 'width');
            $new_height = Arr::get($one, 'height');
            if (Arr::get($one, 'crop')) {
                if ($new_width && $new_height) {
                    $image->thumbnail($new_width, $new_height);
                } else if ($new_width) {
                    $image->thumbnail($new_width);
                } else if ($new_height) {
                    $image->thumbnail($new_height);
                }
            } else if (Arr::get($one, 'resize')) {
                if ($new_width && $new_height) {
                    $image->best_fit($new_width, $new_height);
                } else if ($new_width) {
                    $image->fit_to_width($new_width);
                } else if ($new_height) {
                    $image->fit_to_height($new_height);
                }
            }

            if (Arr::get($one, 'watermark')) {
                $watermark = SimpleImage::factory(HOST . HTML::media(str_replace(HOST, '', Config::get('images.watermark')), false));
                $watermark->fit_to_width($image->get_width() * 0.4);
                $image->overlay($watermark, 'bottom right', 0.6, 0, 0);
            }

            $image->save($file, 98);
        }

        @unlink($pathImage);

        return $filename;
    }
}