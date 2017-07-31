<?php use Core\HTML; ?>

<div class="date _mb-3"><?php echo date('d/m/Y', $obj->date); ?></div>
<div class="wysiwyg _mb-4">
    <?php if (is_file(HOST . HTML::media('images/news/inner/' . $obj->image, false)) and $obj->show_image): ?>
        <img src="<?php echo HTML::media('images/news/inner/' . $obj->image); ?>" alt="">
    <?php endif; ?>
    <?php echo $obj->text; ?>
</div>
<a href="<?php echo HTML::link('news'); ?>">Вернуться к списку новостей</a>