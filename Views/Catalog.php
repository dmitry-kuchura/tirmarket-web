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
            <?php echo $_content; ?>
        </div>
        <?php if ($_seo['text_left'] || $_seo['text_right']): ?>
            <div class="seo-section">
                <div class="page-size">
                    <div class="title _mb-3"><?php echo $_seo['h1']; ?></div>
                    <div class="_flex _grid-1 _md-grid-2 _grid-space-4">
                        <div class="wysiwyg _mb-4"><?php echo $_seo['text_left']; ?></div>
                        <div class="wysiwyg _mb-4"><?php echo $_seo['text_right']; ?></div>
                    </div>
                </div>
            </div>
        <?php endif; ?>
    </main>
    <?php echo Widgets::get('Footer'); ?>
</div>
<?php echo Widgets::get('HiddenData'); ?>
<?php echo $GLOBAL_MESSAGE; ?>
</body>
</html>