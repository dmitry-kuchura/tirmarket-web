<?php

use Core\HTML;

/* @var $first object */
/* @var $second object */
/* @var $third object */
/* @var $result array */
?>
<?php if (isset($first) || isset($second) || isset($third) || count($result)): ?>
    <div class="_flex _grid-space-3">
        <div class="_col-12 _xl-col-6">
            <a href="<?php echo HTML::link('news/' . $first->alias, false); ?>" class="news-card news-card--lg _mb-3">
                <?php
                if (is_file(HOST . HTML::media('images/news/big/' . $first->image, false))) {
                    $image = HTML::media('images/news/big/' . $first->image, false);
                } else {
                    $image = HTML::media('pic/no-image.png');
                }
                ?>
                <div class="news-card__image">
                    <img src="<?php echo $image; ?>" alt="">
                </div>
                <div class="news-card__body">
                    <div class="news-card__date"><?php echo date('d/m/Y', $first->date); ?></div>
                    <div class="news-card__title"><?php echo $first->name; ?></div>
                    <div class="news-card__descr"><?php echo $first->short_text; ?></div>
                </div>
            </a>
        </div>
        <div class="_col-12 _xl-col-6">
            <?php if (isset($second)): ?>
                <?php
                if (is_file(HOST . HTML::media('images/news/big/' . $second->image, false))) {
                    $image = HTML::media('images/news/big/' . $second->image, false);
                } else {
                    $image = HTML::media('pic/no-image.png');
                }
                ?>
                <a href="<?php echo HTML::link('news/' . $second->alias, false); ?>" class="news-card _mb-3">
                    <div class="news-card__image">
                        <img src="<?php echo $image; ?>" alt="">
                    </div>
                    <div class="news-card__body">
                        <div class="news-card__date"><?php echo date('d/m/Y', $second->date); ?></div>
                        <div class="news-card__title"><?php echo $second->name; ?></div>
                        <div class="news-card__descr"><?php echo $second->short_text; ?></div>
                    </div>
                </a>
            <?php endif; ?>
            <?php if (isset($third)): ?>
                <?php
                if (is_file(HOST . HTML::media('images/news/big/' . $third->image, false))) {
                    $image = HTML::media('images/news/big/' . $third->image, false);
                } else {
                    $image = HTML::media('pic/no-image.png');
                }
                ?>
                <a href="<?php echo HTML::link('news/' . $third->alias, false); ?>" class="news-card _mb-3">
                    <div class="news-card__image">
                        <img src="<?php echo $image; ?>" alt="">
                    </div>
                    <div class="news-card__body">
                        <div class="news-card__date"><?php echo date('d/m/Y', $third->date); ?></div>
                        <div class="news-card__title"><?php echo $third->name; ?></div>
                        <div class="news-card__descr"><?php echo $third->short_text; ?></div>
                    </div>
                </a>
            <?php endif; ?>
        </div>
        <?php if (count($result)): ?>
            <?php foreach ($result as $obj): ?>
                <?php
                if (is_file(HOST . HTML::media('images/news/big/' . $obj->image, false))) {
                    $image = HTML::media('images/news/big/' . $obj->image, false);
                } else {
                    $image = HTML::media('pic/no-image.png');
                }
                ?>
                <div class="_col-12 _xl-col-6">
                    <a href="<?php echo HTML::link('news/' . $obj->alias, false); ?>" class="news-card _mb-3">
                        <div class="news-card__image">
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
        <?php endif; ?>
    </div>
<?php else: ?>
    <p><?php echo __('Нет новостей'); ?></p>
<?php endif; ?>
<?php echo $pager; ?>