<?php
use Core\HTML;

/* @var $hide_meta boolean */
/* @var $canonical boolean */
/* @var $next boolean */
/* @var $prev boolean */

?>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php echo isset($title) ? $title : NULL; ?></title>
<?php if (!$hide_meta): ?>
    <meta name="description" lang="ru-ru" content="<?php echo isset($description) ? $description : NULL; ?>">
    <meta name="keywords" lang="ru-ru" content="<?php echo isset($keywords) ? $keywords : NULL; ?>">
<?php endif; ?>
<?php if ($canonical): ?>
    <link rel="canonical" href="<?php echo HTML::link($canonical, true); ?>"/><?php endif; ?>
<?php if ($next): ?>
    <link rel="next" href="<?php echo HTML::link($next, true); ?>"/><?php endif; ?>
<?php if ($prev): ?>
    <link rel="prev" href="<?php echo HTML::link($prev, true); ?>"/><?php endif; ?>
    <meta property="og:title" content="Main page">
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="">
    <meta property="og:url" content="">
    <meta property="og:description" content="tirmarket | Главная">
    <meta name="format-detection" content="telephone=no">
    <meta name="format-detection" content="address=no">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width,minimum-scale=1,maximum-scale=1,user-scalable=no">
    <link rel="apple-touch-icon" sizes="180x180" href="<?php echo HTML::media('favicons/apple-touch-icon.png'); ?>">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php echo HTML::media('favicons/favicon-32x32.png'); ?>">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php echo HTML::media('favicons/favicon-16x16.png'); ?>">
    <link rel="manifest" href="<?php echo HTML::media('favicons/manifest.json'); ?>">
    <link rel="mask-icon" href="<?php echo HTML::media('favicons/safari-pinned-tab.svg'); ?>" color="#5bbad5">
    <link rel="shortcut icon" href="<?php echo HTML::media('favicons/favicon.ico'); ?>">
    <meta name="msapplication-config" content="<?php echo HTML::media('favicons/browserconfig.xml'); ?>">
    <meta name="theme-color" content="#ffffff">
<?php $css = Minify\Core::factory('css')->minify($styles); ?>
<?php foreach ($css as $file_style): ?>
    <?php echo HTML::style($file_style) . "\n"; ?>
<?php endforeach; ?>