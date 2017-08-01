<?php

use Core\Widgets;

/* @var $_seo array */
/* @var $GLOBAL_MESSAGE string */
/* @var $_breadcrumbs string */
/* @var $_content string */
?>
<!doctype html>
<html lang="<?php echo I18n::$lang;?>" dir="ltr">
<head>
    <?php echo Widgets::get('Head', $_seo); ?>
    <?php foreach ($_seo['scripts']['head'] as $script): ?>
        <?php echo $script; ?>
    <?php endforeach ?>
    <?php echo $GLOBAL_MESSAGE; ?>
</head>
<body class="">
<?php foreach ($_seo['scripts']['body'] as $script): ?>
    <?php echo $script; ?>
<?php endforeach ?>
<div class="page-wrapper">
    <?php echo Widgets::get('Header'); ?>
    <main class="page-main">
        <div class="page-size">
            <?php echo $_breadcrumbs; ?>
            <?php echo $_content; ?>
            <div class="_lg-show">
                <div class="title _mb-3">Просмотренные товары</div>
                <div class="_flex _grid-space-3">
                    <div class="_col-12 _sm-col-6 _lg-col-3 _mb-3">
                        <div class="item-card"><a href="/product.html" class="item-card__image"
                                                  style="background-image:url(pic/item-image-1.jpg)"></a>
                            <div class="item-card__labels">
                                <div class="label label--green"><span>новинка</span></div>
                            </div>
                            <a href="/product.html" class="item-card__title">Джойстик управления соединяется с
                                тросом</a>
                            <div class="item-card__code">Артикул: 2152345-Р5223</div>
                            <div class="_flex _mb-3 _justify-between">
                                <div class="_col-auto">
                                    <div class="item-card__price item-card__price--past">1 530 грн.</div>
                                    <div class="item-card__price">100 530 грн.</div>
                                </div>
                                <div class="_col-auto">
                                    <div class="item-card__exist item-card__exist--false">Нет в наличии</div>
                                </div>
                            </div>
                            <div class="_flex _justify-between _items-center _grid-space-3 _flex-nowrap">
                                <div class="_col-auto"><a href="#" class="icon-button"><i>
                                            <svg>
                                                <use xlink:href="icons/icons.svg#star"></use>
                                            </svg>
                                        </i></a></div>
                                <div class="_col-auto _flex-grow-1"><a href="#" class="button button--full"><span><i><svg><use
                                                            xlink:href="icons/icons.svg#cart"></use></svg> </i><span>Заказать</span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="_col-12 _sm-col-6 _lg-col-3 _mb-3">
                        <div class="item-card"><a href="/product.html" class="item-card__image"
                                                  style="background-image:url(pic/item-image-2.jpg)"></a>
                            <div class="item-card__labels">
                                <div class="label label--orange"><span>акция</span></div>
                                <div class="label label--green"><span>новинка</span></div>
                            </div>
                            <a href="/product.html" class="item-card__title">Выключатель массы 24V VOLVO / MAN / IVECO /
                                DAF / MB / ICARUS</a>
                            <div class="item-card__code">Артикул: 2152345-Р5223</div>
                            <div class="_flex _mb-3 _justify-between">
                                <div class="_col-auto">
                                    <div class="item-card__price item-card__price--past">1 530 грн.</div>
                                    <div class="item-card__price">100 530 грн.</div>
                                </div>
                                <div class="_col-auto">
                                    <div class="item-card__exist item-card__exist--true">В наличии</div>
                                </div>
                            </div>
                            <div class="_flex _justify-between _items-center _grid-space-3 _flex-nowrap">
                                <div class="_col-auto"><a href="#" class="icon-button"><i>
                                            <svg>
                                                <use xlink:href="icons/icons.svg#star"></use>
                                            </svg>
                                        </i></a></div>
                                <div class="_col-auto _flex-grow-1"><a href="#" class="button button--full"
                                                                       data-basket-trigger data-id="36"><span><i><svg><use
                                                            xlink:href="icons/icons.svg#cart"></use></svg> </i><span>В корзину</span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="_col-12 _sm-col-6 _lg-col-3 _mb-3">
                        <div class="item-card"><a href="/product.html" class="item-card__image"
                                                  style="background-image:url(pic/item-image-1.jpg)"></a>
                            <div class="item-card__labels">
                                <div class="label label--green"><span>новинка</span></div>
                            </div>
                            <a href="/product.html" class="item-card__title">Pеле регулятор DAF / Iveco / Volvo /
                                RVI</a>
                            <div class="item-card__code">Артикул: 2152345-Р5223</div>
                            <div class="_flex _mb-3 _justify-between">
                                <div class="_col-auto">
                                    <div class="item-card__price item-card__price--past">1 530 грн.</div>
                                    <div class="item-card__price">100 530 грн.</div>
                                </div>
                                <div class="_col-auto">
                                    <div class="item-card__exist item-card__exist--true">В наличии</div>
                                </div>
                            </div>
                            <div class="_flex _justify-between _items-center _grid-space-3 _flex-nowrap">
                                <div class="_col-auto"><a href="#" class="icon-button"><i>
                                            <svg>
                                                <use xlink:href="icons/icons.svg#star"></use>
                                            </svg>
                                        </i></a></div>
                                <div class="_col-auto _flex-grow-1"><a href="#" class="button button--full"
                                                                       data-basket-trigger data-id="36"><span><i><svg><use
                                                            xlink:href="icons/icons.svg#cart"></use></svg> </i><span>В корзину</span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="_col-12 _sm-col-6 _lg-col-3 _mb-3">
                        <div class="item-card"><a href="/product.html" class="item-card__image"
                                                  style="background-image:url(pic/item-image-2.jpg)"></a>
                            <div class="item-card__labels">
                                <div class="label label--orange"><span>акция</span></div>
                                <div class="label label--purple"><span>популярный</span></div>
                                <div class="label label--green"><span>новинка</span></div>
                            </div>
                            <a href="/product.html" class="item-card__title">Поршневой комплект 75,5 мм</a>
                            <div class="item-card__code">Артикул: 2152345-Р5223</div>
                            <div class="_flex _mb-3 _justify-between">
                                <div class="_col-auto">
                                    <div class="item-card__price item-card__price--past">1 530 грн.</div>
                                    <div class="item-card__price">100 530 грн.</div>
                                </div>
                                <div class="_col-auto">
                                    <div class="item-card__exist item-card__exist--false">Нет в наличии</div>
                                </div>
                            </div>
                            <div class="_flex _justify-between _items-center _grid-space-3 _flex-nowrap">
                                <div class="_col-auto"><a href="#" class="icon-button"><i>
                                            <svg>
                                                <use xlink:href="icons/icons.svg#star"></use>
                                            </svg>
                                        </i></a></div>
                                <div class="_col-auto _flex-grow-1"><a href="#" class="button button--full"><span><i><svg><use
                                                            xlink:href="icons/icons.svg#cart"></use></svg> </i><span>Заказать</span></span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <?php echo Widgets::get('Footer'); ?>
</div>
<?php echo Widgets::get('HiddenData'); ?>
</body>
</html>