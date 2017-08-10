<div class="modal modal--sm">
    <div class="title title--center _mb-3"><?php echo __('Заказать'); ?></div>
    <form class="" data-form>
        <span class="form-element _mb-3">
            <input type="tel" class="form-element__input" name="phone" data-rule-phoneUA="true" required
                   placeholder="<?php echo __('Контактный телефон'); ?>"/>
        </span>
        <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
        <div class="_flex">
            <button class="button _m-auto _pl-5 _pr-5" type="submit">
                <span><?php echo __('Заказать'); ?></span>
            </button>
        </div>
    </form>
</div>