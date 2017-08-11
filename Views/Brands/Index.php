<?php use Core\HTML; ?>
<div class="producer">
    <?php foreach ($result as $obj): ?>
        <div class="producer__item">
            <a href="<?php echo HTML::link('brands/' . $obj->alias); ?>"><?php echo $obj->name; ?></a>
        </div>
    <?php endforeach; ?>
</div>