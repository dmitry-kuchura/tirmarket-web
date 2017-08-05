<div class="modal modal--sm">
    <div class="title title--center _mb-3"><?php echo __('Купить в один клик'); ?></div>
    <form class="" data-form data-ajax="simple">
        <span class="form-element _mb-3">
            <input type="tel" class="form-element__input" data-name="phone" name="phone" data-rule-phoneUA="true"
                   required
                   placeholder="<?php echo __('Контактный телефон'); ?>"/>
        </span>
        <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
        <input type="hidden" data-name="catalog" value="<?php echo $catalog; ?>"/>
        <div class="_flex">
            <button class="button _m-auto _pl-5 _pr-5" type="submit">
                <span><?php echo __('Заказать'); ?></span>
            </button>
        </div>
    </form>
</div>