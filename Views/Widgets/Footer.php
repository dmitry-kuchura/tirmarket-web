<?php

use Core\Config;
use Core\HTML;

?>

<footer class="page-footer">
    <div class="page-size">
        <div class="_flex _md-flex-nowrap _justify-between _grid-space-4">
            <div class="_col-12 _md-col-auto _flex-shrink-0 _flex _flex-column _mb-3 _md-mb-0">
                <div class="footer-logo">
                    <img src="<?php echo HTML::media('pic/logo.png', false); ?>" alt="">
                </div>
                <div class="copyright _flex-grow-1">
                    <div><?php echo Config::get('basic.copyright'); ?></div>
                    <div><?php echo Config::get('footer.text_copy_' . I18n::$lang); ?>.</div>
                </div>
                <div class="_col-auto"><a href="#">Карта сайта</a></div>
            </div>
            <div class="_col-auto _flex-shrink-0 _md-show">
                <ul class="footer-menu">
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Главная</a></li>
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Каталог</a></li>
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">О компании</a></li>
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Новости</a></li>
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Вакансии</a></li>
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Отзывы</a></li>
                </ul>
            </div>
            <div class="_col-auto _flex-shrink-0 _md-show">
                <ul class="footer-menu">
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Доставка и оплата</a></li>
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Гарантия и возврат</a></li>
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Наши партнёры</a></li>
                    <li class="footer-menu__item"><a href="#" class="footer-menu__link">Контакты</a></li>
                </ul>
            </div>
            <div class="_col-auto _flex _flex-column _xl-show">
                <div class="_flex-grow-1">
                    <div class="_flex _justify-between _mb-3">
                        <div class="_col-auto">
                            <div class="footer-phone">
                                <a href="tel:<?php echo preg_replace("/[^0-9]/", '', Config::get('static.phone_1')); ?>"><?php echo Config::get('static.phone_1'); ?></a>
                            </div>
                            <?php if (Config::get('static.phone_2')) : ?>
                                <div class="footer-phone">
                                    <a href="tel:<?php echo preg_replace("/[^0-9]/", '', Config::get('static.phone_2')); ?>"><?php echo Config::get('static.phone_2'); ?></a>
                                </div>
                            <?php endif; ?>
                            <?php if (Config::get('static.phone_3')) : ?>
                                <div class="footer-phone">
                                    <a href="tel:<?php echo preg_replace("/[^0-9]/", '', Config::get('static.phone_3')); ?>"><?php echo Config::get('static.phone_3'); ?></a>
                                </div>
                            <?php endif; ?>
                        </div>
                        <div class="_col-auto">
                            <div><?php echo Config::get('static.weekdays_' . I18n::$lang); ?></div>
                            <div><?php echo Config::get('static.weekends_' . I18n::$lang); ?></div>
                        </div>
                    </div>
                </div>
                <div class="_col-auto"><?php echo Config::get('footer.text_contacts_' . I18n::$lang); ?></div>
            </div>
            <div class="_col-12 _md-col-auto _flex-shrink-0 _flex _flex-column _md-ml-4">
                <div class="_col-auto _flex-grow-1">
                    <div class="_mb-2"><?php echo __('Мы в социальных сетях'); ?>:</div>
                    <div class="social _mb-3">
                        <a href="<?php echo Config::get('socials.ok'); ?>" class="social__item social__item--ok">
                            <svg>
                                <use xlink:href="<?php echo HTML::media('icons/icons.svg#odnoklassniki', false); ?>"></use>
                            </svg>
                        </a>
                        <a href="<?php echo Config::get('socials.fb'); ?>" class="social__item social__item--fb">
                            <svg>
                                <use xlink:href="<?php echo HTML::media('icons/icons.svg#facebook', false); ?>"></use>
                            </svg>
                        </a>
                        <a href="<?php echo Config::get('socials.you'); ?>" class="social__item social__item--youtube">
                            <svg>
                                <use xlink:href="<?php echo HTML::media('icons/icons.svg#youtube', false); ?>"></use>
                            </svg>
                        </a>
                        <a href="<?php echo Config::get('socials.li'); ?>" class="social__item social__item--linkedin">
                            <svg>
                                <use xlink:href="<?php echo HTML::media('icons/icons.svg#linkedin', false); ?>"></use>
                            </svg>
                        </a>
                    </div>
                </div>
                <div class="_col-auto">
                    <div class="_mb-2"><?php echo __('Разработка сайта'); ?></div>
                    <a href="http://wezom.com.ua/" target="_blank" class="develop-link">
                        <i>
                            <svg>
                                <use xlink:href="<?php echo HTML::media('icons/icons.svg#wezom', false); ?>"></use>
                            </svg>
                        </i><span>Wezom Agency</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>