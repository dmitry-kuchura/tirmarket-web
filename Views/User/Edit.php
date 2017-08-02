<form class="_mb-5" data-form data-ajax="editProfile">
    <div class="form-label"><?php echo __('Ваше имя и фамилия'); ?></div>
    <div class="form-element _mb-3">
        <input type="text" class="form-element__input" name="name"
               value="<?php echo $user->name ? $user->name : ''; ?>"
               data-name="name"
               data-rule-minlength="2" required
               placeholder="">
    </div>
    <div class="form-label"><?php echo __('Контактный телефон'); ?></div>
    <div class="form-element _mb-3">
        <input type="tel" class="form-element__input" name="phone"
               value="<?php echo $user->phone ? $user->phone : ''; ?>" data-name="phone"
               data-rule-phoneua="true" required
               placeholder="">
    </div>
    <div class="form-label"><?php echo __('Контактный email'); ?></div>
    <div class="form-element _mb-3">
        <input type="email" class="form-element__input" name="email"
               value="<?php echo $user->email ? $user->email : ''; ?>"
               data-name="email" data-rule-email="true" required
               placeholder="">
    </div>
    <div class="form-label"><?php echo __('Ваш адрес'); ?></div>
    <div class="form-element _mb-3">
        <input type="text" class="form-element__input" data-name="address" name="address"
               value="<?php echo $user->address ? $user->address : ''; ?>" placeholder="">
    </div>
    <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
    <button class="button _pl-5 _pr-5" type="submit">
        <span><?php echo __('Заказать'); ?></span>
    </button>
</form>