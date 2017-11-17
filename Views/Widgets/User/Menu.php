<?php

use Core\HTML;

$alias = Core\Route::action();


?>
<div class="_col-3 _lg-show">
    <ul class="account-menu">
        <li class="account-menu__item">
            <a href="<?php echo HTML::link('account'); ?>"
               class="account-menu__link <?php echo $alias == 'index' ? 'account-menu__link--active' : ''; ?>"><?php echo __('Личные данные'); ?></a>
        </li>
        <li class="account-menu__item">
            <a href="<?php echo HTML::link('account/edit'); ?>"
               class="account-menu__link <?php echo $alias == 'edit' ? 'account-menu__link--active' : ''; ?>"><?php echo __('Редактировать профиль'); ?></a>
        </li>
        <li class="account-menu__item">
            <a href="<?php echo HTML::link('account/password'); ?>"
               class="account-menu__link <?php echo $alias == 'password' ? 'account-menu__link--active' : ''; ?>"><?php echo __('Напомнить/сменить пароль'); ?></a>
        </li>
        <li class="account-menu__item">
            <a href="<?php echo HTML::link('account/favorites'); ?>"
               class="account-menu__link <?php echo $alias == 'favorites' ? 'account-menu__link--active' : ''; ?>"><?php echo __('Избранное'); ?></a>
        </li>
        <li class="account-menu__item">
            <a href="<?php echo HTML::link('account/orders'); ?>"
               class="account-menu__link <?php echo $alias == 'orders' ? 'account-menu__link--active' : ''; ?>"><?php echo __('История заказов'); ?></a>
        </li>
        <li class="account-menu__item">
            <a href="<?php echo HTML::link('account/invoices'); ?>"
               class="account-menu__link <?php echo $alias == 'invoices' ? 'account-menu__link--active' : ''; ?>"><?php echo __('Выставленные счета'); ?></a>
        </li>
        <li class="account-menu__item">
            <a href="<?php echo HTML::link('account/transport'); ?>"
               class="account-menu__link <?php echo $alias == 'transport' ? 'account-menu__link--active' : ''; ?>"><?php echo __('Добавить Т/С'); ?></a>
        </li>
        <li class="account-menu__item">
            <a href="<?php echo HTML::link('account/logout'); ?>"
               class="account-menu__link"><?php echo __('Выход'); ?></a>
        </li>
    </ul>
</div>