<?php

use Core\HTML;

/* @var $orders array */
/* @var $orders_items array */
/* @var $statuses array */
/* @var $stClasses array */
/* @var $payments array */

?>

<div class="wysiwyg">
    <table class="table-null">
        <tr>
            <th></th>
            <th>№</th>
            <th><?php echo __('Дата заказа'); ?></th>
            <th><?php echo __('Кол-во товаров'); ?></th>
            <th><?php echo __('Способы оплаты'); ?></th>
            <th><?php echo __('Сумма'); ?></th>
            <th><?php echo __('Статус'); ?></th>
        </tr>
        <?php foreach ($orders as $obj): ?>
            <tr class="_text-center" style="vertical-align: middle">
                <td>
                    <span class="history-trigger" data-toggle-trigger
                          data-toggle-ns="order-id-<?php echo $obj->id; ?>"></span>
                </td>
                <td><?php echo $obj->id; ?></td>
                <td><?php echo date('d/m/Y', $obj->created_at); ?></td>
                <td><?php echo count($orders_items[$obj->id]); ?></td>
                <td><?php echo $payments[$obj->payment]; ?></td>
                <td><b><?php echo number_format($obj->amount); ?>грн.</b></td>
                <td>
                    <span class="status <?php echo $stClasses[$obj->status]; ?>"><?php echo $statuses[$obj->status]; ?></span>
                </td>
            </tr>
            <tr>
                <td colspan="7" style="padding: 0">
                    <table class="table-null table-history" data-toggle-target
                           data-toggle-ns="order-id-<?php echo $obj->id; ?>">
                        <?php $i = 1; ?>
                        <?php foreach ($orders_items[$obj->id] as $item): ?>
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
                                <td><span class="history-price"><?php echo number_format($item->price); ?> грн.</span>
                                </td>
                                <td><span class="history-price"><?php echo number_format($amount); ?> грн.</span></td>
                            </tr>
                            <?php $i++; ?>
                        <?php endforeach; ?>
                    </table>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>
</div>