<?php

namespace Wezom\Modules\Catalog\Models;

use Core\Files;
use Core\QB\DB;
use Core\Common;
use Core\CommonI18n;

use Wezom\Modules\Catalog\Models\CatalogTreeBrands AS CTB;
use Wezom\Modules\Catalog\Models\CatalogTreeSpecifications AS CTS;

class Groups extends CommonI18n
{
    public static $table = 'catalog_tree';
    public static $tableI18n = 'catalog_tree_i18n';
    public static $image = 'catalog_tree';
    public static $rules = [];

    public static function countKids($id)
    {
        $result = DB::select([DB::expr('COUNT(id)'), 'count'])
            ->from('catalog_tree')
            ->where('parent_id', '=', $id);
        return $result->count_all();
    }

    public static function countItems($id)
    {
        $result = DB::select([DB::expr('COUNT(id)'), 'count'])
            ->from('catalog')
            ->where('parent_id', '=', $id);
        return $result->count_all();
    }

    public static function changeBrandsCommunications($groupBrands, $id)
    {
        CTB::delete($id, 'catalog_tree_id');
        if (!$groupBrands) {
            return false;
        }
        if (!is_array($groupBrands)) {
            $groupBrands = [$groupBrands];
        }
        foreach ($groupBrands as $brand_id) {
            CTB::insert([
                'catalog_tree_id' => $id,
                'brand_id' => $brand_id,
            ]);
        }
        return true;
    }

    public static function changeSpecificationsCommunications($groupSpec, $id)
    {
        CTS::delete($id, 'catalog_tree_id');
        if (!$groupSpec) {
            return false;
        }
        if (!is_array($groupSpec)) {
            $groupSpec = [$groupSpec];
        }
        foreach ($groupSpec as $specification_id) {
            CTS::insert([
                'catalog_tree_id' => $id,
                'specification_id' => $specification_id,
            ]);
        }
        return true;
    }

    public static function getGroupBrandsIDS($id)
    {
        $groupBrands = [];
        $res = CTB::getRows($id);
        foreach ($res as $obj) {
            $groupBrands[] = $obj->brand_id;
        }
        return $groupBrands;
    }

    public static function getGroupSpecificationsIDS($id)
    {
        $groupSpec = [];
        $res = CTS::getRows($id);
        foreach ($res as $obj) {
            $groupSpec[] = $obj->specification_id;
        }
        return $groupSpec;
    }

    public static function valid($data = [])
    {
        static::$rulesI18n = [
            'name' => [
                [
                    'error' => __('Название не может быть пустым! (:lang)'),
                    'key' => 'not_empty',
                ],
            ],
        ];
        static::$rules = [
            'alias' => [
                [
                    'error' => __('Алиас не может быть пустым!'),
                    'key' => 'not_empty',
                ],
                [
                    'error' => __('Алиас должен содержать только латинские буквы в нижнем регистре, цифры, "-" или "_"!'),
                    'key' => 'regex',
                    'value' => '/^[a-z0-9\-_]*$/',
                ],
            ],
        ];
        return parent::valid($data);
    }

    public static function getRows($status = null, $sort = null, $type = null, $limit = null, $offset = null, $filter = true)
    {
        $lang = 'ua';
        static::$tableI18n = static::$table . '_i18n';
        if ($sort) {
            $arr = explode('.', $sort);
            if (count($arr) < 2) {
                $sort = static::$table . '.' . $sort;
            }
        }
        $result = DB::select(
            static::$tableI18n . '.*', static::$table . '.*'
        )
            ->from(static::$table)
            ->join(static::$tableI18n, 'LEFT')->on(static::$tableI18n . '.row_id', '=', static::$table . '.id')
            ->where(static::$tableI18n . '.language', '=', $lang);
        if ($filter) {
            $result = static::setFilter($result);
        }
        if ($status <> null) {
            $result->where(static::$table . '.status', '=', $status);
        }
        if ($sort <> null) {
            if ($type <> null) {
                $result->order_by($sort, $type);
            } else {
                $result->order_by($sort);
            }
        }
        $result->order_by(static::$table . '.id', 'DESC');
        if ($limit <> null) {
            $result->limit($limit);
            if ($offset <> null) {
                $result->offset($offset);
            }
        }
        return $result->find_all();
    }

    public static function uploadImagePopular($id, $name = 'popular', $field = 'image_popular')
    {
        if (!static::$image OR !$id) {
            return false;
        }
        $filename = Files::uploadImage(static::$image, $name);
        if (!$filename) {
            return false;
        }
        if (!Common::checkField(static::$table, $field)) {
            return true;
        }
        return DB::update(static::$table)->set([$field => $filename])->where(static::$table . '.id', '=', $id)->execute();
    }

    public static function deleteImagePopular($filename, $id = null, $field = 'image_popular')
    {
        if (!static::$image OR !$filename) {
            return false;
        }
        $result = Files::deleteImage(static::$image, $filename);
        if (!$result) {
            return false;
        }
        if (!Common::checkField(static::$table, $field)) {
            return true;
        }
        if ($id !== null) {
            return DB::update(static::$table)->set([$field => null])->where(static::$table . '.id', '=', $id)->execute();
        }
        return true;
    }
}