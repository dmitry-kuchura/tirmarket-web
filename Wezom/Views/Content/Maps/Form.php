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
                                            'class' => ['valid'],
                                        ], __('Город')); ?>
                                    </div>
                                    <div class="form-group">
                                        <?php echo \Forms\Builder::input([
                                            'name' => 'FORM[' . $key . '][street]',
                                            'value' => $public->street,
                                        ], __('Улица')); ?>
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
                            'name' => 'FORM[longitude]',
                            'value' => $obj->longitude,
                        ], [
                            'text' => __('longitude'),
                            'tooltip' => __('<b>longitude</b><br>Долгота, используется для простановки маркера!'),
                        ]); ?>
                    </div>
                    <div class="form-group">
                        <?php echo \Forms\Builder::input([
                            'name' => 'FORM[latitude]',
                            'value' => $obj->latitude,
                        ], [
                            'text' => __('latitude'),
                            'tooltip' => __('<b>latitude</b><br>Широта, используется для простановки маркера!'),
                        ]); ?>
                    </div>
                    <div class="form-group">
                        <?php echo \Forms\Builder::input([
                            'name' => 'FORM[email]',
                            'value' => $obj->email,
                        ], [
                            'text' => __('Email'),
                        ]); ?>
                    </div>
                    <div class="form-group">
                        <?php echo \Forms\Builder::input([
                            'name' => 'FORM[phone_1]',
                            'value' => $obj->phone_1,
                        ], [
                            'text' => __('Номер телефона №1'),
                            'tooltip' => __('<b>Номер телефона №1</b><br>Если не заполнен, выводиться не будет!'),
                        ]); ?>
                    </div>
                    <div class="form-group">
                        <?php echo \Forms\Builder::input([
                            'name' => 'FORM[phone_2]',
                            'value' => $obj->phone_2,
                        ], [
                            'text' => __('Номер телефона №2'),
                            'tooltip' => __('<b>Номер телефона №2</b><br>Если не заполнен, выводиться не будет!'),
                        ]); ?>
                    </div>
                    <div class="form-group">
                        <?php echo \Forms\Builder::input([
                            'name' => 'FORM[phone_3]',
                            'value' => $obj->phone_3,
                        ], [
                            'text' => __('Номер телефона №3'),
                            'tooltip' => __('<b>Номер телефона №2</b><br>Если не заполнен, выводиться не будет!'),
                        ]); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php echo \Forms\Form::close(); ?>