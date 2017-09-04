<?php

use Core\HTML;

/* @var $slider [] */

?>
<?php if (count($slider)): ?>
    <div class="slider-holder _md-show">
        <div class="banner-slider _mb-4" data-slider="banner">
            <?php foreach ($slider as $obj): ?>
                <div class="banner-slider__item">
                    <div class="banner">
                        <img src="<?php echo HTML::media('images/slider/big/' . $obj->image); ?>" class="banner__image">
                        <div class="banner__content">
                            <div class="banner__caption"><?php echo $obj->caption; ?></div>
                            <div class="banner__title"><?php echo $obj->title; ?></div>
                            <?php if ($obj->url) : ?>
                                <a href="<?php echo HTML::link($obj->url); ?>" class="button">
                                    <span><?php echo __('Узнать подробнее'); ?></span>
                                </a>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>

        <?php if (count($slider) > 1): ?>
            <div data-slider-prev class="banner-slider__prev">
                <svg>
                    <use xlink:href="Media/icons/icons.svg#arrow-prev"></use>
                </svg>
            </div>
            <div data-slider-next class="banner-slider__next">
                <svg>
                    <use xlink:href="Media/icons/icons.svg#arrow-next"></use>
                </svg>
            </div>
        <?php endif; ?>
    </div>
<?php endif; ?>
