<?php

namespace Modules\Content\Models;

use Core\HTML;
use Core\CommonI18n;

class Slider extends CommonI18n
{
    public static function getSlider()
    {
        $result = CommonI18n::factory('slider')->getRows(1, 'sort', 'ASC');

        $slider = [];

        foreach ($result as $key => $value) {
            if (is_file(HOST . HTML::media('images/slider/big/' . $value->image, false))) {
                $slider[] = $value;
            }
        }

        return $slider;
    }
}