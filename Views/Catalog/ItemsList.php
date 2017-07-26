<?php use Core\View; ?>
<div class="_flex _grid-space-3">
    <?php foreach ($result as $obj): ?>
        <?php echo View::tpl(['obj' => $obj], 'Catalog/ItemTemplate'); ?>
    <?php endforeach; ?>
</div>
<div class="pagination">
    <a href="#" class="pagination__prev">
        <svg>
            <use xmlns:xlink="http://www.w3.org/1999/xlink"
                 xlink:href="icons/icons.svg#arrow-prev"></use>
        </svg>
    </a>
    <a href="#" class="pagination__link">1</a>
    <a href="#" class="pagination__link pagination__link--active">2</a>
    <a href="#" class="pagination__link">3</a> <a href="#" class="pagination__link">4</a>
    <span class="_ml-2 _mr-2">•••</span>
    <a href="#" class="pagination__link">87</a>
    <a href="#" class="pagination__next">
        <svg>
            <use xmlns:xlink="http://www.w3.org/1999/xlink"
                 xlink:href="icons/icons.svg#arrow-next"></use>
        </svg>
    </a>
</div>