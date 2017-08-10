<form class="_mb-5" data-form data-ajax="change_password">
    <div class="form-label"><?php echo __('Ваш старый пароль'); ?></div>
    <div class="form-element _mb-3">
        <input type="password" class="form-element__input"
               data-name="currpass"
               name="currpass" data-rule-password="true"
               required placeholder="">
    </div>
    <div class="form-label"><?php echo __('Ваш новый пароль'); ?></div>
    <div class="form-element _mb-3">
        <input id="pswd" type="password"
               class="form-element__input" name="newpass"
               data-name="newpass"
               data-rule-password="true" data-rule-minlength="6"
               required placeholder="">
    </div>
    <div class="form-label"><?php echo __('Повторите новый пароль'); ?></div>
    <div class="form-element _mb-3">
        <input type="password" class="form-element__input"
               name="repeat"
               data-name="repeat" data-rule-password="true"
               data-rule-equalto="#pswd" required
               placeholder="">
    </div>
    <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
    <input type="hidden" data-name="lang" value="<?php echo I18n::$lang; ?>">
    <button class="button _pl-5 _pr-5" type="submit">
        <span><?php echo __('Сохранить изменения'); ?></span>
    </button>
</form>

<div class="title title--md _mb-3"><?php echo __('Забыли пароль'); ?>?</div>

<form class="_mb-5" data-form data-ajax="forgot_password">
    <div class="form-label"><?php echo __('Ваш email'); ?></div>
    <div class="form-element _mb-3">
        <input type="email" class="form-element__input" data-name="email"
               name="email" data-rule-email="true" required
               placeholder="">
    </div>
    <div class="_mb-2"><?php echo __('Укажите email, на который вы регистрировали свой аккаунт'); ?>.</div>
    <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
    <input type="hidden" data-name="lang" value="<?php echo I18n::$lang; ?>">
    <button class="button _pl-5 _pr-5" type="submit">
        <span><?php echo __('Напомнить пароль'); ?></span>
    </button>
</form>