<?php

use Core\HTML;
use Core\View;

?>

    <div class="_flex _grid-space-3">
        <?php foreach ($result as $obj): ?>
            <?php if ($obj->cost): ?>
                <?php echo View::tpl(['obj' => $obj], 'Catalog/ItemTemplate'); ?>
            <?php else: ?>
                <div class="_col-12 _sm-col-6 _lg-col-3 _mb-3">
                    <div class="category-card">
                        <a href="<?php echo HTML::link('products/' . $obj->alias); ?>" class="category-card__image">
                            <?php if (is_file(HOST . HTML::media('images/catalog_tree/small/' . $obj->image, false))): ?>
                                <img src="<?php echo HTML::media('images/catalog_tree/small/' . $obj->image, false); ?>"
                                     alt="">
                            <?php else: ?>
                                <img src="<?php echo HTML::media('pic/no-catalog.png'); ?>" alt="">
                            <?php endif; ?>
                        </a>
                        <div class="category-card__title"><?php echo $obj->name; ?></div>
                        <a href="<?php echo HTML::link('products/' . $obj->alias); ?>"
                           class="category-card__link"><?php echo __('Перейти в раздел'); ?> →</a>
                    </div>
                </div>
            <?php endif; ?>
        <?php endforeach; ?>
    </div>
<?php echo $pager; ?>