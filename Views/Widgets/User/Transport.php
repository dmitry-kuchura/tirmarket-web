<?php use Core\HTML; ?>
<div class="title title--md _mb-3"><?php echo __('Ваше транспортные средства'); ?></div>
<div class="wysiwyg _mb-5 _text-center">
    <div class="table-wrapper js-table-wrapper">
        <div class="table-wrapper__holder js-table-wrapper__holder">
            <table class="table-null table-wrapp__table js-table-wrapper__table">
                <tbody>
                <tr>
                    <th>№</th>
                    <th>Гос. номер</th>
                    <th>Марка</th>
                    <th>Модель</th>
                    <th>Год выпуска</th>
                    <th>VIN</th>
                </tr>
                <?php foreach ($result as $obj): ?>
                    <tr>
                        <td><?php echo $obj->id; ?></td>
                        <td><?php echo $obj->gos_number; ?></td>
                        <td><?php echo $obj->mark; ?></td>
                        <td><?php echo $obj->model; ?></td>
                        <td><?php echo $obj->year; ?>2010</td>
                        <td><?php echo $obj->vin; ?></td>
                    </tr>
                <?php endforeach; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<a href="<?php echo HTML::link('account/transport'); ?>" class="button"><span><?php echo __('Добавить Т/С'); ?></span></a>