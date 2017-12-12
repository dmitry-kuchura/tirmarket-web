<?php use Core\HTML; ?>
<?php if (count($result)): ?>
    <div class="title title--md _mb-3"><?php echo __('Ваши транспортные средства'); ?></div>
    <div class="wysiwyg _mb-5 _text-center">
        <div class="table-wrapper js-table-wrapper">
            <div class="table-wrapper__holder js-table-wrapper__holder">
                <table class="table-null table-wrapp__table js-table-wrapper__table">
                    <tbody>
                    <tr>
                        <th>№</th>
                        <th><?php echo __('Гос. номер'); ?></th>
                        <th><?php echo __('Марка'); ?></th>
                        <th><?php echo __('Модель'); ?></th>
                        <th><?php echo __('Год выпуска'); ?></th>
                        <th><?php echo __('VIN'); ?></th>
                    </tr>
                    <?php foreach ($result as $obj): ?>
                        <tr>
                            <td><?php echo $obj->id; ?></td>
                            <td><?php echo $obj->gos_number; ?></td>
                            <td><?php echo $obj->mark; ?></td>
                            <td><?php echo $obj->model; ?></td>
                            <td><?php echo $obj->year; ?></td>
                            <td><?php echo $obj->vin; ?></td>
                        </tr>
                    <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<?php endif; ?>
<a href="<?php echo HTML::link('account/transport'); ?>"
   class="button"><span><?php echo __('Добавить Т/С'); ?></span></a>