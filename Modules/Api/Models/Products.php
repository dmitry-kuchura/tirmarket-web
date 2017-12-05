<?php

namespace Modules\Api\Models;

use Core\Text;
use Core\QB\DB;
use Core\CommonI18n;
use Exception;

class Products extends CommonI18n {

    public static $table = 'catalog';
    public static $tableI18n = 'catalog_i18n';

    /**
     * Проверка на существование товара по ID
     *
     * @param $obj
     * @return bool
     */
    public static function checkItem($obj) {
        $check = DB::select()->from(static::$table)->where('import_id', '=', $obj->id)->find();

        if (count($check)) {
            return false;
        } else {
            return true;
        }
    }

    /**
     * Добавление товаров из 1С
     *
     * @param $obj
     * @return bool
     * @throws Exception
     */
    public static function insertRows($obj) {
        try {
            $parent = DB::select()->from('catalog_tree')->where('import_id', 'LIKE', $obj->parentID)->find();
            $brand = DB::select()->from('brands')->where('id', '=', $obj->brandID)->find();

            $data = [];
            $data['import_id'] = $obj->id;
            $data['code_1с'] = $obj->code1C;
            $data['alias'] = self::unique(trim($obj->name));
            $data['sort'] = $obj->position;
            $data['status'] = $obj->status;
            $data['artikul'] = trim($obj->article);
            $data['parent_id'] = $parent->id;
            $data['brand_alias'] = $brand->alias;
            $data['created_at'] = time();
            $data['updated_at'] = time();

            $keys = [];
            $values = [];
            foreach ($data as $key => $value) {
                $keys[] = $key;
                $values[] = $value;
            }

            $result = DB::insert(static::$table, $keys)->values($values)->execute();
            $lastID = $result[0];

            /* i18n */
            $ua = [];
            $ua['name'] = $obj->name;
            $ua['language'] = 'ua';
            $ua['row_id'] = $lastID;

            $keys = [];
            $values = [];
            foreach ($ua as $key => $value) {
                $keys[] = $key;
                $values[] = $value;
            }

            DB::insert(static::$tableI18n, $keys)->values($values)->execute();

            $ru = [];
            $ru['name'] = $obj->name;
            $ru['language'] = 'ru';
            $ru['row_id'] = $lastID;

            $keys = [];
            $values = [];
            foreach ($ru as $key => $value) {
                $keys[] = $key;
                $values[] = $value;
            }

            DB::insert(static::$tableI18n, $keys)->values($values)->execute();

            if (isset($obj->analogs->analog) && count($obj->analogs->analog)) {
                if (is_array($obj->analogs->analog)) {
                    DB::delete('catalog_related')->where('who_id', '=', $lastID)->execute();
                    foreach ($obj->analogs->analog as $key => $analog) {
                        $item = DB::select()->from(static::$table)->where('import_id', 'LIKE', $analog)->find()->id;
                        if ($item) {
                            DB::insert('catalog_related', ['who_id', 'with_id'])->values([$lastID, $item])->execute();
                        }
                    }
                } else {
                    DB::delete('catalog_related')->where('who_id', '=', $lastID)->execute();
                    $item = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->analogs->analog)->find()->id;
                    if ($item) {
                        DB::insert('catalog_related', ['who_id', 'with_id'])->values([$lastID, $item])->execute();
                    }
                }
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }
        return true;
    }

    /**
     * Обновление товаров из 1С
     *
     * @param $obj
     * @return bool
     * @throws Exception
     */
    public static function updateRows($obj) {
        try {
            $parent = DB::select()->from('catalog_tree')->where('id', '=', $obj->parentID)->find();
            $brand = DB::select()->from('brands')->where('id', '=', $obj->brandID)->find();

            $data = [];
            $data['code_1с'] = $obj->code1C;
            $data['sort'] = $obj->position;
            $data['status'] = $obj->status;
            $data['artikul'] = trim($obj->article);
            $data['parent_id'] = $parent->id;
            $data['brand_alias'] = $brand->alias;
            $data['updated_at'] = time();


            DB::update(static::$table)->set($data)->where('import_id', '=', $obj->id)->execute();
            $itemID = DB::select('id')->from(static::$table)->where('import_id', '=', $obj->id)->find()->id;

            DB::update(static::$tableI18n)
                    ->set(['name' => $obj->name])
                    ->where('row_id', '=', $itemID)
                    ->where('language', '=', 'ua')
                    ->execute();
            DB::update(static::$tableI18n)
                    ->set(['name' => $obj->name])
                    ->where('row_id', '=', $itemID)
                    ->where('language', '=', 'ru')
                    ->execute();

            if (isset($obj->originals->original) && count($obj->originals->original)) {
                if (is_array($obj->originals->original)) {
                    DB::delete('catalog_original')->where('catalog_id', '=', $itemID)->execute();
                    foreach ($obj->originals->original as $original) {
                        DB::insert('catalog_original', ['code', 'brand', 'catalog_id'])->values([$original->code, $original->brand, $itemID])->execute();
                    }
                } else {
                    DB::delete('catalog_original')->where('catalog_id', '=', $itemID)->execute();
                    DB::insert('catalog_original', ['code', 'brand', 'catalog_id'])->values([$obj->originals->original->code, $obj->originals->original->brand, $itemID])->execute();
                }
            }

            if (isset($obj->analogs->analog)) {
                if (is_array($obj->analogs->analog)) {
                    DB::delete('catalog_related')->where('who_id', '=', $itemID)->execute();

                    foreach ($obj->analogs->analog as $key => $analog) {
                        $item = DB::select()->from(static::$table)->where('import_id', 'LIKE', $analog)->find()->id;
                        if ($item) {
                            DB::insert('catalog_related', ['who_id', 'with_id'])->values([$itemID, $item])->execute();
                        }
                    }
                } else {
                    DB::delete('catalog_related')->where('who_id', '=', $itemID)->execute();
                    $item = DB::select()->from(static::$table)->where('import_id', 'LIKE', $obj->analogs->analog)->find()->id;
                    if ($item) {
                        DB::insert('catalog_related', ['who_id', 'with_id'])->values([$itemID, $item])->execute();
                    }
                }
            }
        } catch (Exception $err) {
            throw new Exception($err->getMessage());
        }

        return true;
    }

    /**
     * Проверка на уникальный alias
     *
     * @param $value
     * @return mixed|string
     */
    public static function unique($value) {
        $value = Text::translit($value);
        $count = DB::select([DB::expr('COUNT(id)'), 'count'])
                ->from(static::$table)
                ->where('alias', '=', $value);
        $count = $count->count_all();
        if ($count) {
            return $value . rand(1, 9999999);
        }
        return $value;
    }

}
