<?php

use Core\HTML;
use Core\Config;

?>

<div class="wysiwyg">
    <p><?php echo $page->text_left; ?></p>
</div>
<div class="_flex _grid-2 _sm-grid-3 _lg-grid-6 _items-center _mb-3 _mt-3">
    <?php foreach ($result as $obj): ?>
        <?php if (is_file(HOST . HTML::media('images/partners/original/' . $obj->image, false))): ?>
            <div class="partner-logo">
                <a href="<?php echo $obj->alias; ?>">
                    <img src="<?php echo HTML::media('images/partners/original/' . $obj->image, false); ?>" alt="">
                </a>
            </div>
        <?php endif; ?>
    <?php endforeach; ?>
</div>
