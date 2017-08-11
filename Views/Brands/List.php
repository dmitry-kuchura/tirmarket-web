<?php use Core\View; ?>
<div class="_flex _grid-space-3">
    <?php foreach ($result as $obj): ?>
        <?php echo View::tpl(['obj' => $obj], 'Brands/ItemTemplateBrands'); ?>
    <?php endforeach; ?>
</div>