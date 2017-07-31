<?php

use Core\Widgets;

/* @var $_seo array */
/* @var $GLOBAL_MESSAGE string */
/* @var $_breadcrumbs string */
/* @var $_content string */
?>
<!doctype html>
<html>
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
            <?php echo $_breadcrumbs; ?>
            <div class="title _mb-3"><?php echo $_seo['h1']; ?></div>
            <?php echo $_content; ?>
        </div>
    </main>
    <?php echo Widgets::get('Footer'); ?>
</div>
<?php echo Widgets::get('HiddenData'); ?>
</body>
</html>