<?php

use Forms\Builder;
use Forms\Form;
use Core\Arr;

?>


<?php echo Builder::open(); ?>
    <div class="form-actions" style="display: none;">
        <?php echo Form::submit(['name' => 'name', 'value' => __('Отправить'), 'class' => 'submit btn btn-primary pull-right']); ?>
    </div>
    <div class="col-md-7">
        <div class="widget box">
            <div class="widgetHeader">
                <div class="widgetTitle">
                    <i class="fa fa-reorder"></i>
                    <?php echo __('Основные данные'); ?>
                </div>
            </div>
            <div class="widgetContent">
                <div class="form-vertical row-border">
                    <ul class="liTabs t_wrap">
                        <?php foreach ($languages AS $key => $lang): ?>
                            <?php $public = Arr::get($langs, $key, []); ?>
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

                                    <div class="form-group">
                                        <?php echo Builder::tiny([
                                            'name' => 'FORM[' . $key . '][text_left]',
                                            'value' => $public->text_left,
                                            'id' => $key . '_text_left',
                                        ], __('Левый столбец')); ?>
                                    </div>

                                    <div class="form-group">
                                        <?php echo Builder::tiny([
                                            'name' => 'FORM[' . $key . '][text_right]',
                                            'value' => $public->text_right,
                                            'id' => $key . '_text_right',
                                        ], __('Правый столбец')); ?>
                                    </div>
                                </div>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5">
        <div class="widget box">
            <div class="widgetHeader">
                <div class="widgetTitle">
                    <i class="fa fa-reorder"></i>
                    <?php echo __('Базовые настройки'); ?>
                </div>
            </div>
            <div class="widgetContent">
                <div class="form-vertical row-border">
                    <div class="form-group">
                        <?php echo Builder::bool($obj ? $obj->status : 1); ?>
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
                </div>
            </div>

        </div>
    </div>
<?php echo Form::close(); ?>