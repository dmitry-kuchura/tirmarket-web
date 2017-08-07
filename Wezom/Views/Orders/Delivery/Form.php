<?php if ($_SERVER['REQUEST_METHOD'] == 'POST'): ?>
    <?php $langs = []; ?>
    <?php foreach ($languages AS $key => $lang): ?>
        <?php $langs[$key] = $obj->$key; ?>
        <?php unset($obj->$key); ?>
    <?php endforeach; ?>
<?php else: ?>
    <?php $langs = \Core\Arr::get($obj, 'langs', []); ?>
    <?php $obj = \Core\Arr::get($obj, 'obj', []); ?>
<?php endif; ?>
<form id="myForm" class="rowSection validat" method="post" action="" enctype="multipart/form-data">
    <div class="form-actions" style="display: none;">
        <input class="submit btn btn-primary pull-right" type="submit" value="<?php echo __('Отправить'); ?>">
    </div>
    <div class="col-md-7">
        <div class="widget box">
            <div class="widgetHeader">
                <div class="widgetTitle">
                    <i class="fa fa fa-reorder"></i>
                    <?php echo __('Основные данные'); ?>
                </div>
            </div>
            <div class="widgetContent">
                <div class="form-vertical row-border">
                    <div class="widgetContent">
                        <ul class="liTabs t_wrap">
                            <?php foreach ($languages AS $key => $lang): ?>
                                <?php $public = \Core\Arr::get($langs, $key, []); ?>
                                <li class="t_item">
                                    <a class="t_link" href="#"><?php echo $lang['name']; ?></a>
                                    <div class="t_content">
                                        <div class="form-group">
                                            <label class="control-label"
                                                   for="f_name"><?php echo __('Название'); ?></label>
                                            <div class="">
                                                <input id="f_name"
                                                       class="form-control <?php echo $key == 'ru' ? 'translitSource' : ''; ?> valid"
                                                       name="FORM[<?php echo $key; ?>][name]" type="text"
                                                       value="<?php echo $public->name; ?>"/>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            <?php endforeach; ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5">
        <div class="widget">
            <div class="widgetHeader">
                <div class="widgetTitle">
                    <i class="fa fa-reorder"></i>
                    <?php echo __('Базовые настройки'); ?>
                </div>
            </div>
            <div class="form-group">
                <label class="control-label"><?php echo __('Опубликовано'); ?></label>
                <div class="">
                    <label class="checkerWrap-inline">
                        <input name="status" value="0"
                               type="radio" <?php echo (!$obj->status AND $obj) ? 'checked' : ''; ?>>
                        <?php echo __('Нет'); ?>
                    </label>
                    <label class="checkerWrap-inline">
                        <input name="status" value="1"
                               type="radio" <?php echo ($obj->status OR !$obj) ? 'checked' : ''; ?>>
                        <?php echo __('Да'); ?>
                    </label>
                </div>
            </div>
            <div class="widgetHeader">
                <div class="widgetTitle">
                    <i class="fa fa-reorder"></i>
                    <?php echo __('Изображение') . ' (Выводится в оригинальном размере!)'; ?>
                </div>
            </div>
            <div class="widgetContent">
                <div class="form-vertical row-border">
                    <div class="form-group">
                        <div class="">
                            <?php if (is_file(HOST . Core\HTML::media('images/delivery/original/' . $obj->image, false))): ?>
                                <a href="<?php echo Core\HTML::media('images/delivery/original/' . $obj->image); ?>"
                                   rel="lightbox">
                                    <img src="<?php echo Core\HTML::media('images/delivery/original/' . $obj->image); ?>"
                                         style="max-height: 100px;"/>
                                </a>
                                <br/>
                                <div class="contentImageControl">
                                    <a class="btn btn-danger otherBtn"
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
</form>