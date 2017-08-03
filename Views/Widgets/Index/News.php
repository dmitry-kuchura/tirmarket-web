<?php use Core\HTML; ?>

<div style="background-color: #f8f8f8" class="_pt-4 _pb-4">
    <div class="page-size">
        <div class="_flex _justify-between _items-center _mb-3">
            <div class="title"><?php echo __('Новости и статьи'); ?></div>
            <a href="<?php echo HTML::link('news'); ?>"><?php echo __('Все новости'); ?> →</a></div>
        <div class="_flex _grid-space-3">
            <?php foreach ($result as $obj): ?>
                <div class="_col-12 _xl-col-6">
                    <a href="<?php echo HTML::link('news/' . $obj->alias); ?>" class="news-card _mb-3">
                        <div class="news-card__image">
                            <?php
                            if (is_file(HOST . HTML::media('images/news/small/' . $obj->image, false))) {
                                $image = HTML::media('images/news/small/' . $obj->image, false);
                            } else {
                                $image = HTML::media('pic/no-image.png');
                            }
                            ?>
                            <img src="<?php echo $image; ?>" alt="">
                        </div>
                        <div class="news-card__body">
                            <div class="news-card__date"><?php echo date('d/m/Y', $obj->date); ?></div>
                            <div class="news-card__title"><?php echo $obj->name; ?></div>
                            <div class="news-card__descr"><?php echo $obj->short_text; ?></div>
                        </div>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>