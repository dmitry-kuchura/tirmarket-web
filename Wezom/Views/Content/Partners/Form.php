<?php echo \Forms\Builder::open(); ?>
<div class="form-actions" style="display: none;">
    <?php echo \Forms\Form::submit(['name' => 'name', 'value' => __('Отправить'), 'class' => 'submit btn btn-primary pull-right']); ?>
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
                        <?php $public = \Core\Arr::get($langs, $key, []); ?>
                        <?php echo $lang['default'] == 1 ? '<input type="hidden" class="default_lang" value="' . $lang['name'] . '">' : ''; ?>
                        <li class="t_item">
                            <a class="t_link" href="#"><?php echo $lang['name']; ?></a>
                            <div class="t_content">
                                <div class="form-group">
                                    <?php echo \Forms\Builder::input([
                                        'name' => 'FORM[' . $key . '][name]',
                                        'value' => $public->name,
                                        'class' => ['valid', $lang['default'] == 1 ? 'translitSource' : ''],
                                    ], __('Название')); ?>
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
                    <?php echo \Forms\Builder::bool($obj ? $obj->status : 1); ?>
                </div>
                <div class="form-group">
                    <?php echo \Forms\Builder::input([
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
        <div class="widgetHeader">
            <div class="widgetTitle">
                <i class="fa fa-reorder"></i>
                <?php echo __('Изображение'); ?>
            </div>
        </div>
        <div class="widgetContent">
            <div class="form-vertical row-border">
                <div class="form-group">
                    <label class="control-label"><?php echo __('Изображение'); ?> <i class="fa fa-info-circle text-info bs-tooltip nav-hint liTipLink" title="" data-title="<b>Изображение выводится в оригинальном размере!</b> <br>Рекомендуемый размер: 120*80" style="white-space: nowrap;"></i></label>
                    <div class="contentImage">
                        <?php if (is_file(HOST . Core\HTML::media('images/partners/original/' . $obj->image, false))): ?>
                            <div class="contentImageView">
                                <a href="<?php echo Core\HTML::media('images/partners/original/' . $obj->image); ?>"
                                   class="mfpImage">
                                    <img src="<?php echo Core\HTML::media('images/partners/original/' . $obj->image); ?>"/>
                                </a>
                            </div>
                            <div class="contentImageControl">
                                <a class="btn btn-danger"
                                   href="/wezom/<?php echo Core\Route::controller(); ?>/delete_image/<?php echo $obj->id; ?>">
                                    <i class="fa fa-remove"></i>
                                    <?php echo __('Удалить изображение'); ?>
                                </a>
                            </div>
                        <?php else: ?>
                            <input type="file" name="file"/>
                        <?php endif ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php echo \Forms\Form::close(); ?>