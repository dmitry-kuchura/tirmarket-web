<?php use Core\HTML; ?>
<div class="_flex _items-center _grid-space-3 _justify-center">
    <div class="_col-6 _text-center">
        <img src="<?php echo HTML::media('pic/order-success.jpg'); ?>" alt="">
    </div>
    <div class="_col-12 _md-col-6 _text-center _md-text-left">
        <div class="title _mb-2">
            <?php echo __('Спасибо за заказ'); ?>!
        </div>
        <div class="title title--sm _mb-3">
            <?php echo __('Ваш заказ оформлен'); ?>
        </div>
        <div class="wysiwyg _mb-4">
            <p>
                <?php echo __('Вашему заказу присвоен номер'); ?> №<?php echo $order; ?>.
                <br><?php echo __('Наш менеджер в ближайшее время свяжется с Вами для уточнения деталей заказа'); ?>.
            </p>
        </div>
        <a href="<?php echo HTML::link(); ?>" class="button"><?php echo __('Продолжить покупки'); ?></a></div>
</div>