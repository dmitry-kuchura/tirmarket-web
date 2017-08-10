<div class="fast-order-section _pt-5 _pb-5">
    <div class="page-size">
        <div class="_flex _justify-center">
            <div class="_col-12 _md-col-8 _lg-col-6 _xl-col-5">
                <div class="title title--white _text-center"><?php echo __('Подобрать деталь / автозапчасть'); ?></div>
                <div class="subtitle subtitle--white _text-center _mb-4"><?php echo __('Мы перезвоним в течении 5 минут и подберем запчасть'); ?></div>
                <form class="" data-form data-ajax="picking">
                    <span class="form-element _mb-3">
                        <input type="text" class="form-element__input form-element__input--round"
                               data-name="artikul"
                               name="target"
                               required
                               placeholder="<?php echo __('Наименование детали либо артикул'); ?>">
                    </span>
                    <span class="form-element _mb-3">
                        <input type="text" class="form-element__input form-element__input--round"
                               name="questions_name"
                               data-name="name"
                               data-rule-minlength="2"
                               required
                               placeholder="<?php echo __('Ваше имя'); ?>">
                    </span>
                    <span class="form-element _mb-3">
                        <input type="tel" class="form-element__input form-element__input--round"
                               name="phone"
                               data-name="phone"
                               data-rule-phoneua="true"
                               required
                               placeholder="<?php echo __('Контактный телефон'); ?>">
                    </span>
                    <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
                    <input type="hidden" data-name="lang" value="<?php echo I18n::$lang; ?>">
                    <div class="_flex">
                        <button class="button _m-auto _pl-5 _pr-5" type="submit">
                            <span><?php echo __('Подобрать'); ?></span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>