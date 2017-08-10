<?php

use Core\HTML;
use Core\Config;

/* @var $cart integer */
/* @var $menu array */
/* @var $user object */
/* @var $top_menu array */

?>
<header class="page-header">
    <div class="page-header__above">
        <div class="page-size">
            <div class="_flex _justify-between _items-center _grid-space-3">
                <div class="_col-auto">
                    <ul class="site-menu">
                        <?php foreach ($menu as $obj): ?>
                            <li class="site-menu__item">
                                <a href="<?php echo $obj->url; ?>" class="site-menu__link"><?php echo $obj->name; ?></a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
                <div class="_col-auto _ml-auto">
                    <div class="lang">
                        <a href="<?php echo I18n::switcherLink('ru'); ?>" class="lang__item lang__item--active">
                            <span class="lang__icon">
                                <svg><use xlink:href="<?php echo HTML::media('icons/icons.svg#russia', false); ?>"></use></svg></span>
                            <span class="lang__title">рус</span>
                        </a>
                        <a href="<?php echo I18n::switcherLink('ua'); ?>" class="lang__item">
                            <span class="lang__icon">
                                <svg><use xlink:href="<?php echo HTML::media('icons/icons.svg#ukraine', false); ?>"></use></svg></span>
                            <span class="lang__title">укр</span>
                        </a>
                    </div>
                </div>
                <div class="_col-auto">
                    <?php if (!$user): ?>
                        <a href="#" class="account-link" data-mfp="<?php echo HTML::link('hidden/auth'); ?>"><i>
                                <svg>
                                    <use xlink:href="<?php echo HTML::media('icons/icons.svg#user', false); ?>"></use>
                                </svg>
                            </i><span><?php echo __('Авторизация/Регистрация'); ?></span>
                        </a>
                    <?php else: ?>
                        <a href="<?php echo HTML::link('account'); ?>" class="account-link"><i>
                                <svg>
                                    <use xlink:href="<?php echo HTML::media('icons/icons.svg#user', false); ?>"></use>
                                </svg>
                            </i><span><?php echo __('Личный кабинет'); ?></span>
                        </a>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
    <div class="page-header__middle">
        <div class="page-size">
            <div class="_flex _grid-space-3 _flex-nowrap _items-center _justify-between">
                <div class="_col-auto _flex-shrink-0">
                    <a href="<?php echo HTML::link(); ?>" class="logo">
                        <img src="<?php echo HTML::media('pic/logo.png'); ?>" alt="">
                    </a>
                </div>
                <div class="_col-auto _flex-grow-1 _lg-show">
                    <div class="title title--sm _mb-2"><?php echo Config::get('static.text_header_' . I18n::$lang); ?></div>
                    <search-form data-vue="true" data-placeholder="<?php echo __('Поиск'); ?>" data-lang="<?php echo I18n::$lang; ?>"></search-form>
                </div>
                <div class="_col-auto _xl-show">
                    <div class="_flex _flex-nowrap">
                        <div class="header-contact">
                            <div class="header-contact__title"><?php echo Config::get('static.location_' . I18n::$lang); ?></div>
                            <div class="header-contact__phone">
                                <a href="tel:<?php echo preg_replace("/[^0-9]/", '', Config::get('static.phone_1')); ?>"><?php echo Config::get('static.phone_1'); ?></a>
                            </div>
                            <?php if (Config::get('static.phone_2')): ?>
                                <div class="header-contact__phone">
                                    <a href="tel:<?php echo preg_replace("/[^0-9]/", '', Config::get('static.phone_2')); ?>"><?php echo Config::get('static.phone_2'); ?></a>
                                </div>
                            <?php endif; ?>
                        </div>
                        <div class="header-contact">
                            <div class="header-contact__title"><?php echo __('Приём заявок'); ?>:</div>
                            <div class="header-contact__data"><?php echo Config::get('static.weekdays_' . I18n::$lang); ?></div>
                            <div class="header-contact__data"><?php echo Config::get('static.weekends_' . I18n::$lang); ?></div>
                        </div>
                    </div>
                </div>
                <div class="_col-auto _flex-shrink-0">
                    <div class="_flex _items-center">
                        <?php if ($user): ?>
                            <a href="<?php echo HTML::link('account/favorites', false); ?>" class="header-icon">
                                <span class="header-icon__caption"><?php echo __('Избранное'); ?></span>
                                <span class="header-icon__image">
                                <svg><use xlink:href="<?php echo HTML::media('icons/icons.svg#star', false); ?>"></use></svg>
                            </span>
                            </a>
                        <?php else: ?>
                            <a href="<?php echo HTML::link('favorites', false); ?>" class="header-icon">
                                <span class="header-icon__caption"><?php echo __('Избранное'); ?></span>
                                <span class="header-icon__image">
                                <svg><use xlink:href="<?php echo HTML::media('icons/icons.svg#star', false); ?>"></use></svg>
                            </span>
                            </a>
                        <?php endif; ?>
                        <a href="#" class="header-icon" data-mfp="<?php echo HTML::link('hidden/basket', false); ?>">
                            <span class="header-icon__caption"><?php echo __('Корзина'); ?></span>
                            <span class="header-icon__image">
                                <svg><use xlink:href="<?php echo HTML::media('icons/icons.svg#cart', false); ?>"></use></svg>
                                <span class="header-icon__count" data-cart-count><?php echo $cart; ?></span>
                            </span>
                        </a>
                        <div class="hamburger hamburger--spin _lg-hide" data-navbar-trigger>
                            <div class="hamburger-box">
                                <div class="hamburger-inner">
                                    <div class="hamburger-inner__top"></div>
                                    <div class="hamburger-inner__bottom"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="page-header__below">
        <div class="page-size">
            <ul class="catalog-menu" data-menu data-menu-tip="<?php echo __('Все категории'); ?>">
                <?php foreach ($top_menu as $obj): ?>
                    <li class="catalog-menu__item">
                        <a href="<?php echo HTML::link('products/' . $obj->alias); ?>"
                           class="catalog-menu__link"><?php echo $obj->name; ?></a>
                    </li>
                <?php endforeach; ?>
                <li class="catalog-menu__item">
                    <a href="<?php echo HTML::link('products'); ?>"
                       class="catalog-menu__link"><?php echo __('Все категории'); ?></a>
                </li>
            </ul>
        </div>
    </div>
</header>