<?php

use Core\HTML;
use Core\Route;
use Modules\Catalog\Models\Filter;

/* @var $brands array */
/* @var $filter array */
?>

<div class="sidebar">
    <form data-form>
        <div class="sidebar__section sidebar__section--header">
            <div class="_flex _items-center _justify-between">
                <div class="title title--md"><?php echo __('Фильтр товаров'); ?></div>
                <a href="#" class="_lg-hide" data-toggle-trigger="false" data-toggle-ns="filter"
                   data-toggle-text='["Скрыть", "Показать"]'><?php echo __('Показать'); ?></a>
            </div>
        </div>
        <div class="_lg-show" data-toggle-target="slide" data-toggle-ns="filter">
            <?php if (count($brands)): ?>
                <div class="sidebar__section _pt-0">
                    <div class="title title--sm _mb-3"><?php echo __('Производитель'); ?></div>
                    <?php foreach ($brands as $brand) {
                        echo Filter::generateInput($filter, $brand, 'brand');
                    } ?>
                </div>
            <?php endif; ?>
            <div class="sidebar__section">
                <div class="title title--sm _mb-3"><?php echo __('Цена'); ?></div>
                <div class="form-element">
                    <div data-range="[<?php echo $min . ', ' . $max . ', ' . $smin . ', ' . $smax; ?>]"
                         data-ns="price"></div>
                    <input type="hidden" name="mixcost" data-ns="price[0]">
                    <input type="hidden" name="maxcost" data-ns="price[1]">
                </div>
            </div>
            <?php if (count($specifications['list'])): ?>
                <?php foreach ($specifications['list'] as $specification_alias => $specification_name): ?>
                    <?php if (isset($specifications['values'][$specification_alias]) and count($specifications['values'][$specification_alias])): ?>
                        <?php $spec = end($specifications['values'][$specification_alias]) ?>
                        <div class="sidebar__section">
                            <div class="title title--sm _mb-3"><?php echo $spec->specification_name; ?></div>
                            <div class="_flex _grid-2 _grid-space-3">
                                <?php foreach ($specifications['values'][$specification_alias] as $obj) {
                                    echo Filter::generateInput($filter, $obj, $obj->specification_alias);
                                } ?>
                            </div>
                        </div>
                    <?php endif ?>
                <?php endforeach ?>
            <?php endif; ?>

            <div class="sidebar__section _text-center _p-4">
                <button type="reset" href="<?php echo HTML::link('products/' . Route::param('alias')); ?>"
                        class="reset-trigger">
                    <span>
                        <i>
                            <svg><use xlink:href="<?php echo HTML::media('icons/icons.svg#cancel', false); ?>"></use></svg>
                        </i>
                        <span>Очистить фильтр</span>
                    </span>
                </button>
            </div>
        </div>
    </form>
</div>