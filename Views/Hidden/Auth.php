<?php use Core\HTML; ?>
<div class="modal modal--sm">
    <div data-tab-content="sing-in" data-tab-ns="auth" class="is-active">
        <div class="title title--md _mb-3"><?php echo __('Войти в личный кабинет'); ?></div>

        <form class="" data-form data-ajax="login">
            <div class="form-label"><?php echo __('Укажите свой Email'); ?> <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="email" data-name="email" class="form-element__input" name="mail" data-rule-email="true"
                       required/>
            </div>

            <div class="form-label"><?php echo __('Пароль'); ?> <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="password" data-name="password" data-msg="<?php ?>" class="form-element__input" name="pass"
                       data-rule-password="true" required/>
            </div>

            <div class="_mb-3">
                <a href="#" data-tab-trigger="forgot" data-tab-ns="auth"><?php echo __('Забыли пароль'); ?>?</a>
            </div>

            <div class="form-element form-element--check _mb-3">
                <label>
                    <input type="checkbox" data-name="remember" name="remember"/>
                    <i>
                        <svg>
                            <use xmlns:xlink="http://www.w3.org/1999/xlink"
                                 xlink:href="<?php echo HTML::media('icons/icons.svg#check'); ?>"></use>
                        </svg>
                    </i>
                    <span><?php echo __('Запомнить меня'); ?></span>
                </label>
            </div>

            <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>

            <div class="_flex _justify-between _items-center">
                <div class="_col-auto">
                    <button class="button _pl-5 _pr-5" type="submit"><span><?php echo __('Войти'); ?></span></button>
                </div>

                <div class="_col-auto">
                    <a href="#" data-tab-trigger="sing-up" data-tab-ns="auth"><?php echo __('Зарегистрироваться'); ?></a>
                </div>
            </div>
        </form>
    </div>

    <div data-tab-content="sing-up" data-tab-ns="auth">
        <div class="title title--md _mb-3"><?php echo __('Зарегистрироваться'); ?></div>

        <form class="" data-form data-ajax="registration">
            <div class="form-label"><?php echo __('Укажите свой Email'); ?> <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="email" class="form-element__input" name="mail" data-name="email" data-rule-email="true" required/>
            </div>

            <div class="form-label"><?php echo __('Пароль'); ?> <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="password" class="form-element__input" name="pass" data-name="password" data-rule-password="true" required/>
            </div>

            <div class="_flex _justify-between _items-center _mb-3">
                <div class="_col-auto">
                    <a href="#" data-tab-trigger="sing-in" data-tab-ns="auth"><?php echo __('Войти'); ?></a>
                </div>

                <div class="_col-auto">
                    <a href="#" data-tab-trigger="forgot" data-tab-ns="auth"><?php echo __('Забыли пароль'); ?>?</a>
                </div>
            </div>

            <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>

            <div class="_flex _justify-between _items-center">
                <div class="_col-auto">
                    <button class="button _pl-5 _pr-5" type="submit"><span><?php echo __('Зарегистрироваться'); ?></span></button>
                </div>
            </div>
        </form>
    </div>

    <div data-tab-content="forgot" data-tab-ns="auth">
        <div class="title title--md _mb-3"><?php echo __('Забыли пароль'); ?>?</div>

        <form class="" data-form>
            <div class="form-label"><?php echo __('Укажите свой Email'); ?> <i>*</i></div>
            <div class="form-element _mb-2">
                <input type="email" class="form-element__input" name="mail" data-rule-email="true" required/>
            </div>

            <div class="_flex _justify-between _items-center _mb-3">
                <div class="_col-auto">
                    <a href="#" data-tab-trigger="sing-in" data-tab-ns="auth"><?php echo __('Войти'); ?></a>
                </div>

                <div class="_col-auto">
                    <a href="#" data-tab-trigger="sing-up" data-tab-ns="auth"><?php echo __('Зарегистрироваться'); ?></a>
                </div>
            </div>

            <div class="_flex _justify-between _items-center">
                <div class="_col-auto">
                    <button class="button _pl-5 _pr-5" type="submit"><span><?php echo __('Отправить'); ?></span></button>
                </div>
            </div>
        </form>

    </div>
</div>