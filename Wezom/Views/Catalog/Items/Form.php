<?php

use Forms\Builder;
use Forms\Form;

?>

<?php echo Builder::open(); ?>
<div class="form-actions" style="display: none;">
    <?php echo Form::submit(['name' => 'name', 'value' => 'Отправить', 'class' => 'submit btn btn-primary pull-right']); ?>
</div>
<div class="col-md-6">
    <div class="widget box">
        <div class="widgetContent">
            <div class="form-vertical row-border">
                <div class="form-group">
                    <div class="rowSection">
                        <div class="col-md-3">
                            <?php echo Builder::bool($obj ? $obj->status : 1); ?>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="rowSection">
                        <div class="col-md-6 form-group">
                            <?php echo Builder::select('<option value="0">' . __('Не выбрано') . '</option>' . $tree,
                                null, [
                                    'id' => 'parent_id',
                                    'name' => 'FORM[parent_id]',
                                    'class' => 'valid',
                                ], [
                                    'text' => __('Группа'),
                                    'tooltip' => '<b>' . __('При изменении группы товара меняется набор характеристик!') . '</b>',
                                ]); ?>
                        </div>
                        <div class="col-md-6 form-group">
                            <?php echo Builder::input([
                                'name' => 'FORM[sort]',
                                'value' => $obj->sort,
                            ], [
                                'text' => __('Позиция'),
                                'tooltip' => '<b>' . __('Поле определяет позицию товара среди других в списках') . '</b>',
                            ]); ?>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <div class="rowSection">
                        <div class="col-md-6 form-group">
                            <?php echo Builder::select($stocks, (int)$obj->stock_id, [
                                'id' => 'stock_id',
                                'name' => 'FORM[stock_id]',
                                'disabled' => '',
                            ], [
                                'text' => __('Склад'),
                                'tooltip' => '<b>' . __('Склад на котором находится товар!') . '</b>',
                            ]); ?>
                        </div>
                        <div class="col-md-6 form-group">
                            <?php echo Builder::input([
                                'name' => 'FORM[stock_count]',
                                'value' => $obj->stock_count,
                                'disabled' => '',
                            ], [
                                'text' => __('Остаток'),
                                'tooltip' => '<b>' . __('Остаток товара в базе 1С') . '</b>',
                            ]); ?>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <?php echo Builder::input([
                        'name' => 'FORM[artikul]',
                        'value' => $obj->artikul,
                    ], __('Артикул')); ?>
                </div>
                <div class="form-group">
                    <?php echo Builder::input([
                        'name' => 'FORM[number]',
                        'value' => $obj->number,
                    ], __('Серийный номер')); ?>
                </div>
                <div class="form-group">
                    <?php echo Builder::alias([
                        'name' => 'FORM[alias]',
                        'value' => $obj->alias,
                        'class' => 'valid',
                    ], [
                        'text' => __('Алиас'),
                        'tooltip' => __('<b>Алиас (англ. alias - псевдоним)</b><br>Алиасы используются для короткого именования страниц. <br>Предположим, имеется страница с псевдонимом «<b>about</b>». Тогда для вывода этой страницы можно использовать или полную форму: <br><b>http://domain/?go=frontend&page=about</b><br>или сокращенную: <br><b>http://domain/about.html</b>'),
                    ]); ?>
                </div>
                <div class="form-group">
                    <div class="col-md-3">
                        <?php echo Builder::bool($obj->sale, 'sale', __('Акция')); ?>
                    </div>
                    <div class="col-md-3">
                        <?php echo Builder::bool($obj->new, 'new', __('Новинка')); ?>
                    </div>
                    <div class="col-md-3">
                        <?php echo Builder::bool($obj->top, 'top', __('Популярный')); ?>
                    </div>
                    <div class="col-md-3">
                        <label class="control-label"><?php echo __('Наличие'); ?></label>
                        <div class="">
                            <label class="checkerWrap-inline">
                                <?php echo Builder::radio(($obj && $obj->available == 0) ? true : false, [
                                    'name' => 'available',
                                    'value' => 0,
                                ]); ?>
                                <?php echo __('Нет'); ?>
                            </label>
                            <label class="checkerWrap-inline">
                                <?php echo Builder::radio((!$obj || $obj->available == 1) ? true : false, [
                                    'name' => 'available',
                                    'value' => 1,
                                ]); ?>
                                <?php echo __('Есть'); ?>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group costField">
                    <?php echo Builder::input([
                        'type' => 'tel',
                        'name' => 'FORM[cost]',
                        'value' => $obj->cost,
                        'class' => 'valid',
                    ], __('Цена')); ?>
                </div>
                <div class="form-group hiddenCostField" <?php echo !$obj->sale ? 'style="display:none;"' : ''; ?>>
                    <?php echo Builder::input([
                        'type' => 'tel',
                        'name' => 'FORM[cost_old]',
                        'value' => $obj->cost_old,
                    ], __('Старая цена')); ?>
                </div>
                <ul class="liTabs t_wrap">
                    <?php foreach ($languages AS $key => $lang): ?>
                        <?php $public = \Core\Arr::get($langs, $key, []); ?>
                        <?php echo $lang['default'] == 1 ? '<input type="hidden" class="default_lang" value="' . $lang['name'] . '">' : ''; ?>
                        <li class="t_item">
                            <a class="t_link" href="#"><?php echo $lang['name']; ?></a>
                            <div class="t_content">
                                <div class="form-group">
                                    <?php echo Builder::input([
                                        'name' => 'FORM[' . $key . '][name]',
                                        'value' => $public->name,
                                        'class' => ['valid', $lang['default'] == 1 ? 'translitSource' : ''],
                                    ], __('Название')); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo Builder::tiny([
                                        'name' => 'FORM[' . $key . '][text]',
                                        'value' => $public->text,
                                    ], __('Описание')); ?>
                                </div>
                                <div style="font-weight: bold; margin-bottom: 10px;"><?php echo __('Внимание! Незаполненные данные будут подставлены по шаблону', [':link' => \Core\HTML::link('wezom/seo_templates/edit/2')]); ?></div>
                                <div class="form-group">
                                    <?php echo Builder::input([
                                        'name' => 'FORM[' . $key . '][h1]',
                                        'value' => $public->h1,
                                    ], [
                                        'text' => 'H1',
                                        'tooltip' => __('Рекомендуется, чтобы тег h1 содержал ключевую фразу, которая частично или полностью совпадает с title'),
                                    ]); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo Builder::input([
                                        'name' => 'FORM[' . $key . '][title]',
                                        'value' => $public->title,
                                    ], [
                                        'text' => 'Title',
                                        'tooltip' => __('<p>Значимая для продвижения часть заголовка должна быть не более 12 слов</p><p>Самые популярные ключевые слова должны идти в самом начале заголовка и уместиться в первых 50 символов, чтобы сохранить привлекательный вид в поисковой выдаче.</p><p>Старайтесь не использовать в заголовке следующие знаки препинания – . ! ? – </p>'),
                                    ]); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo Builder::textarea([
                                        'name' => 'FORM[' . $key . '][keywords]',
                                        'rows' => 5,
                                        'value' => $public->keywords,
                                    ], [
                                        'text' => 'Keywords',
                                    ]); ?>
                                </div>
                                <div class="form-group">
                                    <?php echo Builder::textarea([
                                        'name' => 'FORM[' . $key . '][description]',
                                        'value' => $public->description,
                                        'rows' => 5,
                                    ], [
                                        'text' => 'Description',
                                    ]); ?>
                                </div>
                            </div>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="col-md-6">
    <div class="widget box">
        <div class="widgetHeader">
            <div class="widgetTitle">
                <i class="fa fa-list-alt"></i>
                <?php echo __('Характеристики'); ?>
            </div>
        </div>
        <div class="widgetContent">
            <div class="form-group">
                <?php echo Builder::select(\Core\Support::selectData($brands, 'alias', 'name', [0, __('Нет')]),
                    $obj->brand_alias, [
                        'id' => 'brand_alias',
                        'name' => 'FORM[brand_alias]',
                    ], __('Производитель')); ?>
            </div>
            <div class="form-vertical row-border" id="specGroup">
                <?php foreach ($specifications as $spec): ?>
                    <?php if (count($specValues[$spec->id])): ?>
                        <div class="form-group <?php echo $spec->type_id == 3 ? 'multiSelectBlock' : null; ?>">
                            <?php if ($spec->type_id == 3): ?>
                                <?php echo Builder::select(\Core\Support::selectData($specValues[$spec->id], 'alias', 'name'),
                                    \Core\Arr::get($specArray, $spec->alias, []), [
                                        'name' => 'SPEC[' . $spec->alias . '][]',
                                        'multiple' => 'multiple',
                                    ], $spec->name); ?>
                            <?php endif ?>
                            <?php if ($spec->type_id == 2 OR $spec->type_id == 1): ?>
                                <?php echo Builder::select(\Core\Support::selectData($specValues[$spec->id], 'alias', 'name', [0, __('Нет')]),
                                    \Core\Arr::get($specArray, $spec->alias), [
                                        'name' => 'SPEC[' . $spec->alias . ']',
                                    ], $spec->name); ?>
                            <?php endif ?>
                        </div>
                    <?php endif ?>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</div>
<?php echo Form::close(); ?>

<?php echo $uploader; ?>
<?php echo $related; ?>

<script>
    $(function () {
        $('input[name="sale"]').on('change', function () {
            var val = parseInt($(this).val());
            if (val) {
                var cost = $('input[name="FORM[cost]"]').val();
                var cost_old = $('input[name="FORM[cost_old]"]').val();
                $('input[name="FORM[cost]"]').val(cost_old);
                $('input[name="FORM[cost_old]"]').val(cost);
                $('.hiddenCostField').show();
            } else {
                var cost = $('input[name="FORM[cost]"]').val();
                var cost_old = $('input[name="FORM[cost_old]"]').val();
                $('input[name="FORM[cost]"]').val(cost_old);
                $('input[name="FORM[cost_old]"]').val(cost);
                $('.hiddenCostField').hide();
            }
        });

        $('#parent_id').on('change', function () {
            var catalog_tree_id = $(this).val();
            $.ajax({
                url: '/wezom/ajax/catalog/getSpecificationsByCatalogTreeID',
                type: 'POST',
                dataType: 'JSON',
                data: {
                    catalog_tree_id: catalog_tree_id
                },
                success: function (data) {
                    var i = 0;
                    var j = 0;
                    var val;
                    var html = '<option value="0"><?php echo __('Нет'); ?></option>';
                    $('#model_alias').html(html);
                    for (i = 0; i < data.brands.length; i++) {
                        html += '<option value="' + data.brands[i].alias + '">' + data.brands[i].name + '</option>';
                    }
                    $('#brand_alias').html(html);
                    html = '';
                    for (i = 0; i < data.specifications.length; i++) {
                        var spec = data.specifications[i];
                        if (data.specValues[spec.id]) {
                            var values = data.specValues[spec.id];
                            html += '<div class="form-group"><label class="control-label">' + spec.name + '</label>';
                            if (parseInt(spec.type_id) == 3) {
                                html += '<div class="multiSelectBlock"><div class="controls">';
                                html += '<select class="form-control" name="SPEC[' + spec.alias + '][]" multiple="10" style="height:150px;">';
                                for (j = 0; j < values.length; j++) {
                                    val = values[j];
                                    html += '<option value="' + val.alias + '">' + val.name + '</option>';
                                }
                                html += '</select>';
                                html += '</div></div>';
                            }
                            if (parseInt(spec.type_id) == 2 || parseInt(spec.type_id) == 1) {
                                html += '<div class=""><div class="controls">';
                                html += '<select class="form-control" name="SPEC[' + spec.alias + ']">';
                                html += '<option value="0"><?php echo __('Нет'); ?></option>';
                                for (j = 0; j < values.length; j++) {
                                    val = values[j];
                                    html += '<option value="' + val.alias + '">' + val.name + '</option>';
                                }
                                html += '</select>';
                                html += '</div></div>';
                            }
                            html += '</div>';
                        }
                    }
                    $('#specGroup').html(html);
                    multi_select();
                }
            });
        });
    });
</script>