<?php

use Core\Arr;
use Core\Config;
use Core\Route;

$limit = Config::get('basic.limit');

?>
<span id="catalogSort"
     data-uri="<?php echo str_replace('/page/' . Route::param('page'), '', Arr::get($_SERVER, 'REQUEST_URI')); ?>"
     data-get="<?php echo Route::controller() == 'search' ? 'query=' . Arr::get($_GET, 'query') : ''; ?>">
    <div class="_col-auto _flex _items-center _grid-space-2 _lg-show">
        <div class="form-label"><?php echo __('Сортировать'); ?>:</div>
        <div class="_col-auto">
            <select name="sort" class="select">
                <option value="cost"
                        data-type="desc" <?php echo (Arr::get($_GET, 'sort') == 'cost' and Arr::get($_GET, 'type') == 'desc') ? 'selected' : ''; ?>>
                    <?php echo __('От дорогих к дешевым'); ?>
                </option>
                <option value="cost"
                        data-type="asc" <?php echo (Arr::get($_GET, 'sort') == 'cost' and Arr::get($_GET, 'type') == 'asc') ? 'selected' : ''; ?>>
                    <?php echo __('От дешевых к дорогим'); ?>
                </option>
                <option value="created_at"
                        data-type="desc" <?php echo (Arr::get($_GET, 'sort') == 'created_at' and Arr::get($_GET, 'type') == 'desc') ? 'selected' : ''; ?>>
                    <?php echo __('От новых к старым'); ?>
                </option>
                <option value="created_at"
                        data-type="asc" <?php echo (Arr::get($_GET, 'sort') == 'created_at' and Arr::get($_GET, 'type') == 'asc') ? 'selected' : ''; ?>>
                    <?php echo __('От старых к новым'); ?>
                </option>
                <option value="name"
                        data-type="asc" <?php echo (Arr::get($_GET, 'sort') == 'name' and Arr::get($_GET, 'type') == 'asc') ? 'selected' : ''; ?>>
                    <?php echo __('По названию от А до Я'); ?>
                </option>
                <option value="name"
                        data-type="desc" <?php echo (Arr::get($_GET, 'sort') == 'name' and Arr::get($_GET, 'type') == 'desc') ? 'selected' : ''; ?>>
                    <?php echo __('По названию от Я до А'); ?>
                </option>
            </select>
        </div>
    </div>

    <div class="_col-auto _flex _items-center _grid-space-2 _lg-show">
        <div class="form-label"><?php echo __('Показывать'); ?>:</div>
        <div class="_col-auto">
            <select name="per_page" class="select">
                <?php for ($i = $limit; $i < $limit * 5; $i += $limit): ?>
                    <option value="<?php echo $i; ?>" <?php echo Arr::get($_GET, 'per_page') == $i ? 'selected' : ''; ?>><?php echo $i; ?><?php echo __('товаров'); ?></option>
                <?php endfor; ?>
            </select>
        </div>
    </div>
</span>