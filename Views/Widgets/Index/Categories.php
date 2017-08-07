<?php

use Core\HTML;

/* @var $result array */
?>

<?php if (count($result)): ?>
    <div style="background-color: #f8f8f8" class="_pt-4 _pb-4">
        <div class="page-size">
            <div class="title _mb-3"><?php echo __('Популярные категории'); ?></div>
            <div class="_flex _grid-space-3">
                <?php foreach ($result as $obj): ?>
                    <?php if (is_file(HOST . HTML::media('images/catalog_tree/popular/' . $obj->image_popular, false))): ?>
                        <div class="_col-12 _sm-col-6 _lg-col-3 _mb-3">
                            <a class="top-category" href="<?php echo HTML::link('products/' . $obj->alias); ?>">
                                <div href="<?php echo HTML::link('products/' . $obj->alias); ?>"
                                     class="top-category__image">
                                    <img src="<?php echo HTML::media('images/catalog_tree/popular/' . $obj->image_popular, false); ?>">
                                </div>
                                <div class="top-category__title"><?php echo $obj->name; ?></div>
                            </a>
                        </div>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
<?php endif; ?>