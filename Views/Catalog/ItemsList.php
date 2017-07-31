<?php use Core\View; ?>
    <div class="_flex _grid-space-3">
        <?php foreach ($result as $obj): ?>
            <?php echo View::tpl(['obj' => $obj], 'Catalog/ItemTemplate'); ?>
        <?php endforeach; ?>
    </div>
<?php echo $pager; ?>