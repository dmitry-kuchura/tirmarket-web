<?php

use Core\HTML;
use Core\User;
use Core\Config;
use Modules\Catalog\Models\Price;

$ids = \Core\Cookie::getArray('favorites', []);
/* @var $obj object */
/* @var $images array */
/* @var $originals array */
/* @var $specifications array */
?>
<div class="_flex _grid-space-3">
    <div class="_col-12 _lg-col-5 _xl-col-4 _flex-grow-0 _mb-3">
        <div class="product-gallery" <?php if (count($images)): ?>style="margin-left: 80px;"<?php endif; ?>>
            <div class="product-labels _mt-3">
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

            <?php if (count($images)): ?>
                <div class="product-thumbs" data-slider="product-thumb">
                    <?php foreach ($images as $im): ?>
                        <?php
                        if (is_file(HOST . HTML::media('images/catalog/main/' . $im->image, false))) {
                            $image = HTML::media('images/catalog/main/' . $im->image, false);
                        } else {
                            $image = HTML::media('pic/no-image.png', false);
                        }
                        ?>
                        <div class="product-thumbs__item">
                            <img src="<?php echo $image; ?>" alt="">
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php endif; ?>

            <div class="product-image" data-slider="product">
                <?php if (count($images)): ?>
                    <?php foreach ($images as $im): ?>
                        <?php
                        if (is_file(HOST . HTML::media('images/catalog/main/' . $im->image, false))) {
                            $image = HTML::media('images/catalog/main/' . $im->image, false);
                        } else {
                            $image = HTML::media('pic/no-image.png', false);
                        }
                        ?>
                        <div class="product-image__item">
                            <img src="<?php echo $image; ?>" alt="">
                        </div>
                    <?php endforeach; ?>
                <?php else: ?>
                    <div class="product-image__item">
                        <img src="<?php echo HTML::media('pic/no-image.png', false); ?>" alt="">
                    </div>
                <?php endif; ?>
            </div>

        </div>
    </div>
    <div class="_col-12 _lg-col-7 _xl-col-5 _flex-grow-0 _flex-shrink-0 _mb-3">
        <div class="title _mb-3"><?php echo $seo['h1'] ? $seo['h1'] : $obj->name; ?></div>
        <div class="product-meta _mb-4">
            <div class="_flex">
                <div class="_col-6">
                    <?php if ($obj->available == 1): ?>
                        <div class="iproduct-exist product-exist--true"><?php echo __('В наличии'); ?></div>
                    <?php else: ?>
                        <div class="product-exist product-exist--false"><?php echo __('Нет в наличии'); ?></div>
                    <?php endif; ?>
                </div>
                <div class="_col-6">
                    <div class="product-code"><?php echo __('Артикул'); ?>: <?php echo $obj->artikul; ?></div>
                </div>
            </div>
            <div class="divider _mt-2 _mb-2"></div>
            <div class="_flex _items-center">
                <div class="_col-6">
                    <div class="product-maker"><?php echo __('Производитель'); ?>: <a
                            href="<?php echo HTML::link('brands/' . $obj->brand_alias); ?>"><?php echo $obj->brand_name; ?></a>
                    </div>
                </div>
                <div class="_col-6">
                    <a href="#" class="favorite-button <?php echo in_array($obj->id, $ids) ? 'in-favorite-now' : NULL ?>" data-product="<?php echo $obj->id; ?>"
                       data-user="<?php echo User::info()->id; ?>">
                        <i class="icon icon--sm icon--blue _mr-2">
                            <svg>
                            <use xlink:href="<?php echo HTML::media('icons/icons.svg#star', false); ?>"></use>
                            </svg>
                        </i><span><?php echo in_array($obj->id, $ids) ? __('В избранном') : __('В избранное'); ?></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="product-handler">
            <div class="_pl-3 _pr-3 _pt-3 _pb-2">
                <div class="_flex _justify-between _grid-space-3 _items-end">
                    <div class="_col-auto _mb-2">
                        <?php if ($obj->sale == 1): ?>
                            <div class="product-price product-price--disable"><?php echo Price::getCurrentPrice($obj->cost_old); ?>
                            </div>
                        <?php endif; ?>
                        <div class="product-price"><?php echo Price::getCurrentPrice($obj->cost); ?>
                        </div>
                    </div>
                    <div class="_col-auto _mb-2">
                        <div class="product-counter" data-counter data-binding="product">
                            <input type="text" value="1" readonly="readonly" class="product-counter__field"
                                   data-counter-value>
                            <div class="product-counter__increment" data-counter-trigger="increment"></div>
                            <div class="product-counter__decrement" data-counter-trigger="decrement"></div>
                        </div>
                    </div>
                    <div class="_col-auto _mb-2">
                        <div class="_flex _flex-column">
                            <a href="#" class="one-click-button _mb-2"
                               data-mfp="<?php echo HTML::link('hidden/click'); ?>"
                               data-param='{"id": "<?php echo $obj->id; ?>"}'>
                                <i class="icon icon--sm icon--blue _mr-2">
                                    <svg>
                                    <use xlink:href="<?php echo HTML::media('icons/icons.svg#cursor', false); ?>"></use>
                                    </svg>
                                </i>
                                <span><?php echo __('Купить в ОДИН КЛИК'); ?></span>
                            </a>
                            <?php if ($obj->available == 1): ?>
                                <a href="#" class="button" data-basket-trigger
                                   data-id="<?php echo $obj->id; ?>"
                                   data-alias="<?php echo HTML::link('hidden/basket'); ?>"
                                   data-binding="product">
                                    <span>
                                        <i>
                                            <svg>
                                            <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                                 xlink:href="<?php echo HTML::media('icons/icons.svg#cart', false); ?>"></use>
                                            </svg>
                                        </i>
                                        <span><?php echo __('В корзину'); ?></span>
                                    </span>
                                </a>
                            <?php else: ?>
                                <a href="#" class="button" data-mfp="<?php echo HTML::link('hidden/order'); ?>"
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
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="divider divider--white"></div>
            <?php /* <div class="_p-3">
              <div class="product-discount">При заказке от <span
              class="product-discount__count">10 шт</span>: Цена - <span
              class="product-discount__price">121 000 грн.</span></div>
              </div> */ ?>
        </div>
    </div>
    <div class="_col-12 _xl-col-3 _flex-grow-0 _mb-3">
        <div class="_p-4" style="background-color: #f8f8f8">
            <div class="_flex _items-center _mb-2"><i class="icon icon--md icon--grey _mr-3">
                    <svg>
                    <use xlink:href="<?php echo HTML::media('icons/icons.svg#delivery', false); ?>"></use>
                    </svg>
                </i>
                <div class="title title--ms"><?php echo __('Доставка'); ?></div>
            </div>
            <div class="wysiwyg _mb-3"><?php echo Config::get('item.text_delivery_' . I18n::$lang); ?></div>
            <div class="_flex _items-center _mb-2"><i class="icon icon--md icon--grey _mr-3">
                    <svg>
                    <use xlink:href="<?php echo HTML::media('icons/icons.svg#payment', false); ?>"></use>
                    </svg>
                </i>
                <div class="title title--ms"><?php echo __('Оплата'); ?></div>
            </div>
            <div class="wysiwyg _mb-3"><?php echo Config::get('item.text_payment_' . I18n::$lang); ?></div>
            <div class="_flex _items-center _mb-2"><i class="icon icon--md icon--grey _mr-3">
                    <svg>
                    <use xlink:href="<?php echo HTML::media('icons/icons.svg#warranty', false); ?>"></use>
                    </svg>
                </i>
                <div class="title title--ms"><?php echo __('Гарантия'); ?></div>
            </div>
            <div class="wysiwyg _mb-3">
                <p><?php echo Config::get('item.text_garanty_' . I18n::$lang); ?></p>
            </div>
            <div class="_flex _items-center _mb-2"><i class="icon icon--md icon--grey _mr-3">
                    <svg>
                    <use xlink:href="<?php echo HTML::media('icons/icons.svg#refund', false); ?>"></use>
                    </svg>
                </i>
                <div class="title title--ms"><?php echo __('Возврат'); ?></div>
            </div>
            <div class="wysiwyg _mb-3">
                <p><?php echo Config::get('item.text_return_' . I18n::$lang); ?></p>
            </div>
            <div>
                <a href="<?php echo HTML::link(Config::get('item.link_delivery')); ?>"><?php echo __('Подробнее о доставке и оплате'); ?></a>
            </div>
            <div>
                <a href="<?php echo HTML::link(Config::get('item.link_garanty')); ?>"><?php echo __('Подробнее о гарантии и возврате'); ?></a>
            </div>
        </div>
    </div>
</div>
<div class="_flex _mb-4">
    <?php if (count($specifications)) : ?>
        <a href="#" class="tab-link is-active" data-tab-trigger="1"  data-tab-ns="product"><?php echo __('Характеристики'); ?></a>
    <?php endif; ?>
    <?php if ($obj->text): ?>
        <a href="#" class="tab-link <?php echo!count($specifications) ? 'is-active' : NULL ?>" data-tab-trigger="2" data-tab-ns="product"><?php echo __('Описание'); ?></a>
    <?php endif; ?>
    <?php if ($analogue): ?>
        <a href="#" class="tab-link <?php echo!$obj->text ? 'is-active' : NULL ?>" data-tab-trigger="3" data-tab-ns="product"><?php echo __('Аналоги'); ?></a>
    <?php endif; ?>
    <?php if (count($originals)): ?>
        <a href="#" class="tab-link <?php echo!$analogue ? 'is-active' : NULL ?>" data-tab-trigger="4" data-tab-ns="product"><?php echo __('Оригиналы'); ?></a>
    <?php endif; ?>
</div>
<div class="_mb-5">
    <div class="<?php echo count($specifications) ? 'is-active' : NULL ?>" data-tab-content="1" data-tab-ns="product">
        <div class="wysiwyg">
            <table class="table-zebra">
                <?php foreach ($specifications as $key => $value): ?>
                    <tr>
                        <td><b><?php echo $key; ?></b></td>
                        <td><?php echo $value; ?></td>
                    </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
    <div class="<?php echo!count($specifications) ? 'is-active' : NULL ?>" data-tab-content="2" data-tab-ns="product">
        <div class="wysiwyg"><?php echo $obj->text; ?></div>
    </div>
    <div class="<?php echo!$obj->text ? 'is-active' : NULL ?>" data-tab-content="3" data-tab-ns="product">
        <analogue-list data-vue="true" data-lang="<?php echo I18n::$lang; ?>" inline-template>
            <div>
                <div class="analogue-table" v-if="width > 1280">
                    <div class="analogue-table__row analogue-table__row--header">
                        <div class="analogue-table__col"><?php echo __('Товар'); ?></div>
                        <div class="analogue-table__col"><?php echo __('Артикул'); ?></div>
                        <div class="analogue-table__col"><?php echo __('Оригинальный номер'); ?></div>
                        <div class="analogue-table__col"><?php echo __('Производитель'); ?></div>
                        <div class="analogue-table__col"><?php echo __('Цена'); ?></div>
                        <div class="analogue-table__col"><?php echo __('Наличие'); ?></div>
                        <div class="analogue-table__col"></div>
                    </div>
                    <table-row v-for="item in list" :item="item" :key="item.id"></table-row>
                </div>
                <div v-else class="_flex _grid-space-3">
                    <item-card v-for="item in list" :data="item"></item-card>
                </div>
            </div>
        </analogue-list>
    </div>
    <?php if ($originals): ?>
        <div class="<?php echo!$analogue ? 'is-active' : NULL ?>" data-tab-content="4" data-tab-ns="product">
            <div class="wysiwyg">
                <table class="table-zebra">
                    <?php foreach ($originals as $key => $value): ?>
                        <tr>
                            <td><?php echo $value; ?></td>
                            <td><b><?php echo $key; ?></b></td>
                        </tr>
                    <?php endforeach; ?>
                </table>
            </div>
        </div>
    <?php endif; ?>
</div>