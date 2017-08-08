<?php

use Core\HTML;
use Core\View;

?>

<div class="sitemap">
    <ul>
        <li><a href="<?php echo HTML::link(); ?>" class=""
               title="<?php echo __('Главная страница'); ?>"><?php echo __('Главная страница'); ?></a>
            <ul>
                <?php foreach ($result[0] as $obj): ?>
                    <?php if ($obj->tpl): ?>
                        <?php echo View::tpl(['links' => $links, 'result' => $result, 'obj' => $obj], 'Sitemap/' . $obj->tpl); ?>
                    <?php else: ?>
                        <li><a href="<?php echo HTML::link($obj->alias); ?>"><?php echo $obj->name; ?></a></li>
                    <?php endif; ?>
                <?php endforeach; ?>
            </ul>
        </li>
    </ul>
</div>