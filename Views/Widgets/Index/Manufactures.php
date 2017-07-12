<?php use Core\HTML; ?>
<div style="background-color: #f8f8f8" class="_pt-4 _pb-2">
    <div class="page-size">
        <div class="_flex _justify-between _items-center _mb-3">
            <div class="title">Производители</div>
            <a href="<?php echo HTML::link('brands'); ?>">Все производители →</a></div>
        <div class="producer _mb-5">
            <?php foreach ($result as $obj): ?>
                <div class="producer__item">
                    <a href="<?php echo HTML::link('brands/' . $obj->alias); ?>"><?php echo $obj->name; ?></a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>