<?php

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
</head>
<body class="">
<?php foreach ($_seo['scripts']['body'] as $script): ?>
    <?php echo $script; ?>
<?php endforeach ?>
<div class="page-wrapper">
    <?php echo Widgets::get('Header'); ?>
    <main class="page-main">
        <div class="page-size">
            <?php echo $_breadcrumbs; ?>
            <div class="title _mb-3"><?php echo $_seo['h1']; ?></div>
            <div class="_flex _grid-space-4">
                <?php echo Widgets::get('User_Menu'); ?>
                <div class="_col-12 _lg-col-9 _flex-grow-0">
                    <div class="title title--md _mb-3"><?php echo $_seo['user_title']; ?></div>
                    <?php echo $_content; ?>
                </div>
            </div>
        </div>
    </main>
    <?php echo Widgets::get('Footer'); ?>
</div>
<?php echo Widgets::get('HiddenData'); ?>
<?php echo $GLOBAL_MESSAGE; ?>
</body>
</html>