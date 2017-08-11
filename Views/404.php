<?php

use Core\HTML;
use Core\Widgets;

/* @var $_seo array */
/* @var $GLOBAL_MESSAGE string */
/* @var $_breadcrumbs string */
/* @var $_content string */
?>
<!doctype html>
<html lang="<?php echo I18n::$lang;?>" dir="ltr">
<head>
    <?php echo Widgets::get('Head', $_seo); ?>
    <?php foreach ($_seo['scripts']['head'] as $script): ?>
        <?php echo $script; ?>
    <?php endforeach ?>
    <?php echo $GLOBAL_MESSAGE; ?>
</head>
<body class="">
<?php foreach ($_seo['scripts']['body'] as $script): ?>
    <?php echo $script; ?>
<?php endforeach ?>
<div class="page-wrapper">
    <?php echo Widgets::get('Header'); ?>
    <main class="page-main">

        <div class="page-size">
            <div class="page-404">
                <div class="page-404__title">404</div>

                <div class="page-404__body">
                    <div class="wysiwyg">
                        <p><?php echo __('Страница не найдена. К сожалению, страница, которую Вы запросили, не была найдена'); ?></p>

                        <p><?php echo __('Возможные причины такой "ошибки":'); ?></p>

                        <ul>
                            <li><?php echo __('Неверный URL-адресс страницы - проверьте его на наличие ошибок'); ?></li>
                            <li><?php echo __('Страница не существует'); ?></li>
                            <li><?php echo __('Страница временно недоступна или удалена'); ?></li>
                        </ul>

                        <p><?php echo __('Вы можете перейти на Главную страницу или ознакомиться с нашим каталогом товаров'); ?>.</p>
                    </div>
                </div>
            </div>
        </div>



    </main>
    <?php echo Widgets::get('Footer'); ?>
</div>
<?php echo Widgets::get('HiddenData'); ?>
</body>
</html>