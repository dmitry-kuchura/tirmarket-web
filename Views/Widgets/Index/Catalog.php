<?php use Core\HTML; ?>
<?php if (count($result)): ?>
    <div class="_flex _justify-between _items-center _mb-3">
        <div class="title"><?php echo __('Каталог товаров'); ?></div>
        <a href="<?php echo HTML::link('products'); ?>"><?php echo __('Все категории'); ?> →</a></div>
    <div class="_flex _grid-space-3 _mb-4">
        <?php foreach ($result as $obj): ?>
            <?php
            if (is_file(HOST . HTML::media('images/catalog_tree/small/' . $obj->image, false))) {
                $image = HTML::media('images/catalog_tree/small/' . $obj->image, false);
            } else {
                $image = HTML::media('pic/no-catalog.png');
            }
            ?>
            <div class="_col-12 _sm-col-6 _lg-col-3 _mb-3">
                <div class="category-card">
                    <a href="<?php echo HTML::link('products/' . $obj->alias); ?>" class="category-card__image">
                        <img src="<?php echo $image; ?>" alt="">
                    </a>
                    <div class="category-card__title"><?php echo $obj->name; ?></div>
                    <a href="<?php echo HTML::link('products/' . $obj->alias); ?>"
                       class="category-card__link"><?php echo __('Перейти в раздел'); ?> →</a>
                </div>
            </div>
        <?php endforeach; ?>
    </div>
<?php endif; ?>