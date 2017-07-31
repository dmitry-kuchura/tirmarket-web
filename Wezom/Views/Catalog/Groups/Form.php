<?php

use Forms\Builder;
use Forms\Form;
use Core\Arr;
use Core\HTML;
use Core\Route;
use Core\General;

/* @var $languages [] */
/* @var $langs [] */
/* @var $obj object */

?>

<?php echo Builder::open(); ?>
    <div class="form-actions" style="display: none;">
        <?php echo Form::submit(['name' => 'name', 'value' => 'Отправить', 'class' => 'submit btn btn-primary pull-right']); ?>
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
                        <?php foreach ($languages as $key => $lang): ?>
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
                                            'name' => 'FORM[' . $key . '][text]',
                                            'value' => $public->text,
                                        ], __('SEO text')); ?>
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
                    <?php echo __('Изображения'); ?>
                </div>
            </div>
            <div class="widgetContent">
                <div class="form-vertical row-border">
                    <div class="form-group">
                        <label class="control-label"><?php echo __('Базовое изображение'); ?></label>
                        <div class="contentImage">
                            <?php if (is_file(HOST . HTML::media('images/catalog_tree/original/' . $obj->image, false))): ?>
                                <div class="contentImageView">
                                    <a href="<?php echo HTML::media('images/catalog_tree/original/' . $obj->image); ?>"
                                       class="mfpImage">
                                        <img src="<?php echo HTML::media('images/catalog_tree/small/' . $obj->image); ?>"/>
                                    </a>
                                </div>
                                <div class="contentImageControl">
                                    <a class="btn btn-danger"
                                       href="/wezom/<?php echo Route::controller(); ?>/delete_image/<?php echo $obj->id; ?>">
                                        <i class="fa fa-remove"></i>
                                        <?php echo __('Удалить изображение'); ?>
                                    </a>
                                    <br>
                                    <a class="btn btn-warning"
                                       href="<?php echo \Core\General::crop('catalog_tree', 'small', $obj->image); ?>">
                                        <i class="fa fa-pencil"></i>
                                        <?php echo __('Редактировать'); ?>
                                    </a>
                                </div>
                            <?php else: ?>
                                <input type="file" name="file"/>
                            <?php endif ?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label">
                            <?php echo __('Изображение для популярных категорий'); ?>
                            <i class="fa fa-info-circle text-info bs-tooltip nav-hint liTipLink" title=""
                               data-title="<b>Изоброжение</b> выводимое в виджете 'Популярные категории' на главной странице сайта"
                               style="white-space: nowrap;"></i>
                        </label>
                        <div class="contentImage">
                            <?php if (is_file(HOST . HTML::media('images/catalog_tree/popular/' . $obj->image_popular, false))): ?>
                                <div class="contentImageView">
                                    <a href="<?php echo HTML::media('images/catalog_tree/popular/' . $obj->image_popular); ?>"
                                       class="mfpImage">
                                        <img src="<?php echo HTML::media('images/catalog_tree/popular/' . $obj->image_popular); ?>"/>
                                    </a>
                                </div>
                                <div class="contentImageControl">
                                    <a class="btn btn-danger"
                                       href="/wezom/<?php echo Route::controller(); ?>/delete_image_popular/<?php echo $obj->id; ?>">
                                        <i class="fa fa-remove"></i>
                                        <?php echo __('Удалить изображение'); ?>
                                    </a>
                                    <br>
                                    <a class="btn btn-warning"
                                       href="<?php echo General::crop('catalog_tree', 'popular', $obj->image_popular); ?>">
                                        <i class="fa fa-pencil"></i>
                                        <?php echo __('Редактировать'); ?>
                                    </a>
                                </div>
                            <?php else: ?>
                                <input type="file" name="popular"/>
                            <?php endif ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                        <?php echo Builder::bool($obj->top_menu, 'top_menu', __('Выводить в верхнем меню?')); ?>
                    </div>
                    <div class="form-group">
                        <?php echo Builder::bool($obj->popular, 'popular', __('Выводить в популярных?')); ?>
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
        <div class="widget box">
            <div class="widgetHeader">
                <div class="widgetTitle">
                    <i class="fa fa-reorder"></i>
                    <?php echo __('Допустимые параметры товаров'); ?>
                </div>
            </div>
            <div class="widgetContent">
                <div class="form-vertical row-border">
                    <div class="form-group multiSelectBlock">
                        <?php echo Builder::select(\Core\Support::selectData($brands, 'id', 'name'), $groupBrands, [
                            'name' => 'BRANDS[]',
                            'multiple' => 'multiple',
                        ], __('Бренды')); ?>
                    </div>
                    <div class="form-group multiSelectBlock">
                        <?php echo Builder::select(\Core\Support::selectData($specifications, 'id', 'name'), $groupSpec, [
                            'name' => 'SPEC[]',
                            'multiple' => 'multiple',
                        ], __('Характеристики')); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php echo Form::close(); ?>