<?php use Core\View; ?>
<div class="_flex _grid-space-3">
    <?php if (count($result)): ?>
        <?php foreach ($result as $obj): ?>
            <?php echo View::tpl(['obj' => $obj], 'Catalog/ItemTemplateFavorites'); ?>
        <?php endforeach; ?>
    <?php else: ?>
        <p><?php echo __('Товаров в избранном нет'); ?>!</p>
    <?php endif; ?>
</div>
