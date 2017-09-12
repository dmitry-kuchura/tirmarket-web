<?php

use Core\HTML;

/* @var $favorites array */
?>

<div class="page-size _pt-5 _pb-5">
    <div class="_flex _justify-center _mb-4">
        <a href="#" class="tab-link is-active" data-tab-trigger="1"
           data-tab-ns="category"><?php echo __('Акции'); ?></a>
        <a href="#" class="tab-link" data-tab-trigger="2"
           data-tab-ns="category"><?php echo __('Популярные товары'); ?></a></div>
    <div class="is-active" data-tab-content="1" data-tab-ns="category">
        <div class="slider-holder">
            <div data-slider="promo" class="catalog-slider">
                <?php foreach ($sale as $obj): ?>
                    <?php
                    if (is_file(HOST . HTML::media('images/catalog/item/' . $obj->image, false))) {
                        $image = HTML::media('images/catalog/item/' . $obj->image, false);
                    } else {
                        $image = HTML::media('pic/no-image.png');
                    }
                    ?>
                    <div class="catalog-slider__slide">
                        <div class="item-card">
                            <div>
                                <a href="<?php echo HTML::link($obj->alias . '/p' . $obj->id); ?>" class="item-card__image"
                                   style="background-image:url(<?php echo $image; ?>)"></a>
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
                            <a href="<?php echo HTML::link($obj->alias . '/p' . $obj->id); ?>"
                               class="item-card__title"><?php echo $obj->name; ?></a>
                            <div class="item-card__code"><?php echo __('Артикул'); ?>
                                : <?php echo $obj->artikul; ?></div>
                            <div class="_flex _mb-3 _justify-between">
                                <div class="_col-auto">
                                    <?php if ($obj->sale == 1): ?>
                                        <div class="item-card__price item-card__price--past"><?php echo number_format($obj->cost_old); ?>
                                            грн.
                                        </div>
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
                                    <a href="#" class="icon-button favorite-button <?php echo in_array($obj->id, $favorites) ? 'in-favorite-now' : ''; ?>"
                                       data-product="<?php echo $obj->id; ?>">
                                        <i>
                                            <svg>
                                                <use xlink:href="<?php echo HTML::media('icons/icons.svg#star', false); ?>"></use>
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
                                                    <svg><use xlink:href="Media/icons/icons.svg#cart"></use></svg>
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
                <?php endforeach; ?>
            </div>
            <div data-slider-prev class="catalog-slider__prev">
                <svg>
                    <use xlink:href="Media/icons/icons.svg#arrow-prev"></use>
                </svg>
            </div>
            <div data-slider-next class="catalog-slider__next">
                <svg>
                    <use xlink:href="Media/icons/icons.svg#arrow-next"></use>
                </svg>
            </div>
        </div>
    </div>
    <div class="" data-tab-content="2" data-tab-ns="category">
        <div class="slider-holder">
            <div data-slider="promo" class="catalog-slider">
                <?php foreach ($top as $obj): ?>
                    <?php
                    if (is_file(HOST . HTML::media('images/catalog/main/' . $obj->image, false))) {
                        $image = HTML::media('images/catalog/main/' . $obj->image, false);
                    } else {
                        $image = HTML::media('pic/no-image.png');
                    }
                    ?>
                    <div class="catalog-slider__slide">
                        <div class="item-card">
                            <div>
                                <a href="<?php echo HTML::link($obj->alias . '/p' . $obj->id); ?>" class="item-card__image"
                                   style="background-image:url(<?php echo $image; ?>)"></a>
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
                            <a href="<?php echo HTML::link($obj->alias . '/p' . $obj->id); ?>"
                               class="item-card__title"><?php echo $obj->name; ?></a>
                            <div class="item-card__code"><?php echo __('Артикул'); ?>
                                : <?php echo $obj->artikul; ?></div>
                            <div class="_flex _mb-3 _justify-between">
                                <div class="_col-auto">
                                    <?php if ($obj->sale == 1): ?>
                                        <div class="item-card__price item-card__price--past"><?php echo number_format($obj->cost_old); ?>
                                            грн.
                                        </div>
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
                                    <a href="#" class="icon-button favorite-button <?php echo in_array($obj->id, $favorites) ? 'in-favorite-now' : ''; ?>"
                                       data-product="<?php echo $obj->id; ?>">
                                        <i>
                                            <svg>
                                                <use xlink:href="Media/icons/icons.svg#star"></use>
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
                <?php endforeach; ?>
            </div>
            <div data-slider-prev class="catalog-slider__prev">
                <svg>
                    <use xlink:href="Media/icons/icons.svg#arrow-prev"></use>
                </svg>
            </div>
            <div data-slider-next class="catalog-slider__next">
                <svg>
                    <use xlink:href="Media/icons/icons.svg#arrow-next"></use>
                </svg>
            </div>
        </div>
    </div>
</div>