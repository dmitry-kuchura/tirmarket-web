<?php

use Core\HTML;
use Modules\Catalog\Models\Price;

/* @var $invoices array */
/* @var $invoicesItems array */

?>

<div class="wysiwyg">
    <?php if (count($invoices)): ?>
        <table class="table-null">
            <tr>
                <th></th>
                <th>№</th>
                <th><?php echo __('ID'); ?></th>
                <th><?php echo __('Дата заказа'); ?></th>
                <th><?php echo __('Название'); ?></th>
                <th><?php echo __('Кол-во товаров'); ?></th>
                <th><?php echo __('Сумма'); ?></th>
            </tr>
            <?php foreach ($invoices as $obj): ?>
                <tr class="_text-center" style="vertical-align: middle">
                    <td>
                        <?php if (count($invoicesItems[$obj->id])): ?>
                            <span class="history-trigger" data-toggle-trigger
                                  data-toggle-ns="order-id-<?php echo $obj->id; ?>"></span>
                        <?php endif; ?>
                    </td>
                    <td><?php echo $obj->code_1c; ?></td>
                    <td><?php echo $obj->import_id; ?></td>
                    <td><?php echo date('d/m/Y', $obj->created_at); ?></td>
                    <td><?php echo $obj->document; ?></td>
                    <td><?php echo count($invoicesItems[$obj->id]); ?></td>
                    <td><b><?php echo Price::getCurrentPrice($obj->amount); ?></b></td>
                </tr>
                <?php if (count($invoicesItems[$obj->id])): ?>
                    <tr>
                        <td colspan="7" style="padding: 0">
                            <table class="table-null table-history" data-toggle-target
                                   data-toggle-ns="order-id-<?php echo $obj->id; ?>">
                                <?php $i = 1; ?>
                                <?php foreach ($invoicesItems[$obj->id] as $item): ?>
                                    <?php
                                    if (is_file(HOST . HTML::media('images/catalog/original/' . $item->image, false))) {
                                        $image = HTML::media('images/catalog/original/' . $item->image, false);
                                    } else {
                                        $image = HTML::media('pic/no-image.png');
                                    }
                                    ?>
                                    <tr style="vertical-align: middle">
                                        <td><?php echo $i; ?></td>
                                        <td>
                                            <div class="history-image">
                                                <img src="<?php echo $image; ?>" alt="">
                                            </div>
                                        </td>
                                        <td>
                                            <a href="<?php echo HTML::link($item->alias . '/p' . $item->id); ?>"
                                               class="history-title"><?php echo $item->name; ?></a>
                                        </td>
                                        <td><?php echo $item->count; ?> шт.</td>
                                        <?php $amount = $item->price * $item->count; ?>
                                        <td>
                                            <span class="history-price"><?php echo Price::getCurrentPrice($item->price); ?></span>
                                        </td>
                                        <td>
                                            <span class="history-price"><?php echo Price::getCurrentPrice($amount); ?></span>
                                        </td>
                                    </tr>
                                    <?php $i++; ?>
                                <?php endforeach; ?>
                            </table>
                        </td>
                    </tr>
                <?php endif; ?>
            <?php endforeach; ?>
        </table>
    <?php else: ?>
        <p><?php echo __('Счетов нет!'); ?></p>
    <?php endif; ?>
</div>