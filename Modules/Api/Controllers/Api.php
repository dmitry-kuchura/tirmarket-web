<?php

namespace Modules\Api\Controllers;

use Core\SOAP;
use Core\QB\DB;
use Core\Text;
use Modules\Base;

class Api extends Base
{
    public function getCategoriesAction()
    {
        set_time_limit(9999999999999);

        $result = SOAP::createSoapClient('getCategories');

        foreach ($result->return->categories->category as $obj) {
            $data = [];

            $data['id'] = $obj->id;
            $data['alias'] = $this->unique($obj->name);
            $data['sort'] = $obj->position;
            $data['status'] = $obj->status;
            $data['image'] = $obj->image;
            $data['top_menu'] = $obj->inMainPage;
            $data['popular'] = $obj->id;
            $data['parent_id'] = $obj->parentID;
            $data['created_at'] = time();
            $data['updated_at'] = time();

            $keys = [];
            $values = [];
            foreach ($data as $key => $value) {
                $keys[] = $key;
                $values[] = $value;
            }

            DB::insert('catalog_tree', $keys)->values($values)->execute();

            $i18n = [];

            $i18n['name'] = $obj->name;
            $i18n['language'] = 'ua';
            $i18n['row_id'] = $obj->id;

            $keys = [];
            $values = [];
            foreach ($i18n as $key => $value) {
                $keys[] = $key;
                $values[] = $value;
            }

            DB::insert('catalog_tree_i18n', $keys)->values($values)->execute();
        }
    }

    function unique($value)
    {
        $value = Text::translit($value);
        $count = DB::select([DB::expr('COUNT(id)'), 'count'])
            ->from('catalog_tree')
            ->where('alias', '=', $value);
        $count = $count->count_all();
        if ($count) {
            return $value . rand(1000, 9999);
        }
        return $value;
    }
}