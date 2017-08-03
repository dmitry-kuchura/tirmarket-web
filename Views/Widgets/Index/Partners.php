<?php

use Core\HTML;
use Core\Config;

?>

<div class="page-size _pt-4 _pb-4">
    <div class="_flex _justify-between _items-center _mb-3">
        <div class="title"><?php echo __('Наши партнеры'); ?></div>
        <a href="<?php echo HTML::link('partners'); ?>"><?php echo __('Все партнёры'); ?> →</a>
    </div>
    <div class="wysiwyg">
        <p><?php echo Config::get('partners.text_partners_' . I18n::$lang); ?></p>
    </div>
    <div class="_flex _grid-2 _sm-grid-3 _lg-grid-6 _items-center _mb-3 _mt-3">
        <?php foreach ($result as $obj): ?>
            <?php if (is_file(HOST . HTML::media('images/partners/original/' . $obj->image, false))): ?>
                <div class="partner-logo">
                    <a href="<?php echo $obj->alias; ?>">
                        <img src="<?php echo HTML::media('images/partners/original/' . $obj->image, false); ?>" alt="">
                    </a>
                </div>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
</div>