<?php

use Core\HTML;
use Core\User;

if (is_file(HOST . HTML::media('images/catalog/item/' . $obj->image, false))) {
    $image = HTML::media('images/catalog/item/' . $obj->image, false);
} else {
    $image = HTML::media('pic/no-image.png');
}

?>

<div class="_col-12 _sm-col-6 _md-col-4 _lg-col-6 _xl-col-4 _mb-3">
    <div class="item-card">
        <div>
            <a href="<?php echo HTML::link($obj->alias . '/p' . $obj->id); ?>" class="item-card__image" style="background-image:url(<?php echo $image; ?>)"></a>
        </div>

        <div class="item-card__labels">
            <?php if ($obj->sale == 1): ?>
                <div class="label label--orange"><span><?php echo __('акция'); ?></span></div>
            <?php endif; ?>
            <?php if ($obj->top == 1): ?>
                <div class="label label--purple"><span><?php echo __('популярный'); ?></span></div>
            <?php endif; ?>
            <?php if ($obj->new == 1): ?>
                <div class="label label--green"><span><?php echo __('новинка'); ?></span></div>
            <?php endif; ?>
        </div>
        <a href="<?php echo HTML::link($obj->alias . '/p' . $obj->id); ?>" class="item-card__title"><?php echo $obj->name; ?></a>
        <div class="item-card__code">Артикул: <?php echo $obj->artikul; ?></div>
        <div class="_flex _mb-3 _justify-between">
            <div class="_col-auto">
                <?php if ($obj->sale == 1): ?>
                    <div class="item-card__price item-card__price--past"><?php echo number_format($obj->cost_old); ?> грн.</div>
                <?php endif; ?>
                <div class="item-card__price"><?php echo number_format($obj->cost); ?> грн.</div>
            </div>
            <div class="_col-auto">
                <?php if ($obj->available == 1): ?>
                    <div class="item-card__exist item-card__exist--true"><?php echo __('В наличии'); ?></div>
                <?php else: ?>
                    <div class="item-card__exist item-card__exist--false"><?php echo __('Нет в наличии'); ?></div>
                <?php endif; ?>
            </div>
        </div>
        <div class="_flex _justify-between _items-center _grid-space-3 _flex-nowrap">
            <div class="_col-auto">
                <a href="#" class="icon-button favorite-button" data-product="<?php echo $obj->id; ?>" data-user="<?php echo User::info()->id; ?>">
                    <i>
                        <svg>
                            <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                 xlink:href="<?php echo HTML::media('icons/icons.svg#star', false); ?>"></use>
                        </svg>
                    </i>
                </a>
            </div>
            <?php if ($obj->available == 1): ?>
                <div class="_col-auto _flex-grow-1">
                    <a href="#" class="button button--full" data-basket-trigger
                       data-id="<?php echo $obj->id; ?>"
                       data-alias="<?php echo HTML::link('hidden/basket'); ?>"
                       data-binding="product">
                        <span>
                            <i>
                                <svg><use xlink:href="<?php echo HTML::media('icons/icons.svg#cart', false); ?>"></use></svg>
                            </i>
                            <span><?php echo __('Купить'); ?></span>
                        </span>
                    </a>
                </div>
            <?php else: ?>
                <div class="_col-auto _flex-grow-1">
                    <a href="#" class="button button--full" data-mfp="<?php echo HTML::link('hidden/order'); ?>"
                       data-param='<?php echo json_encode(['id' => $obj->id]); ?>'
                       v-else>
                        <span>
                            <i>
                                <svg><use xmlns:xlink="http://www.w3.org/1999/xlink"
                                          xlink:href="<?php echo HTML::media('icons/icons.svg#cart', false); ?>"></use></svg>
                            </i>
                            <span><?php echo __('Заказать'); ?></span>
                        </span>
                    </a>
                </div>
            <?php endif; ?>
        </div>
    </div>
</div>