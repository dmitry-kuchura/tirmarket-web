<?php use Core\View; ?>
<div class="_flex _grid-space-3">
    <?php if (count($result)): ?>
        <?php foreach ($result as $obj): ?>
            <?php echo View::tpl(['obj' => $obj], 'Brands/ItemTemplateBrands'); ?>
        <?php endforeach; ?>
    <?php else: ?>
        <p><?php echo __('Товары не найдены'); ?>!</p>
    <?php endif; ?>
</div>
