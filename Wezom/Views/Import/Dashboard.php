<?php

/* @var $check array */

?>
<div class="rowSection clearFix">
    <div class="col-md-6">
        <div class="widget box">
            <div class="widgetHeader">
                <div class="widgetTitle">
                    <i class="fa fa-reorder"></i>
                    Добавление в очередь
                </div>
            </div>
            <div class="widgetContent">
                <?php if (!isset($check['categories'])): ?>
                    <a class="btn btn-success btn-block addQuery" data-alias="/api/v2/categories"
                       href="javascript:void(0);">Добавить категории</a>
                <?php else: ?>
                    <a class="btn btn-success btn-block" href="javascript:void(0);">Категории
                        / <?php echo $check['categories']; ?></a>
                <?php endif; ?>

                <?php if (!isset($check['brands'])): ?>
                    <a class="btn btn-warning btn-block addQuery" data-alias="/api/v2/brands"
                       href="javascript:void(0);">Добавить бренды</a>
                <?php else: ?>
                    <a class="btn btn-warning btn-block" href="javascript:void(0);">Бренды
                        / <?php echo $check['brands']; ?></a>
                <?php endif; ?>

                <?php if (!isset($check['products'])): ?>
                    <a class="btn btn-danger btn-block addQuery" data-alias="/api/v2/products"
                       href="javascript:void(0);">Добавить товары</a>
                <?php else: ?>
                    <a class="btn btn-danger btn-block" href="javascript:void(0);">Товары
                        / <?php echo $check['products']; ?></a>
                <?php endif; ?>

                <?php if (!isset($check['image'])): ?>
                    <a class="btn btn-primary btn-block addQuery" data-alias="/api/v2/images"
                       href="javascript:void(0);">Добавить изображения</a>
                <?php else: ?>
                    <a class="btn btn-primary btn-block" href="javascript:void(0);">Изображения
                        / <?php echo $check['image']; ?></a>
                <?php endif; ?>

                <?php if (!isset($check['prices'])): ?>
                    <a class="btn btn-info btn-block addQuery" data-alias="/api/v2/prices"
                       href="javascript:void(0);">Добавить цены</a>
                <?php else: ?>
                    <a class="btn btn-info btn-block" href="javascript:void(0);">Цены
                        / <?php echo $check['prices']; ?></a>
                <?php endif; ?>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="rowSection clearFix">
            <div class="col-md-12">
                <div class="widget box">
                    <div class="widgetHeader">
                        <div class="widgetTitle">
                            <i class="fa fa-reorder"></i>
                            История запуска
                        </div>
                    </div>
                    <div class="widgetContent ">
                        <div class="mCustomScrollbar fluid scrollSize_2">
                            <table class="table table-striped table-checkable tableTask">
                                <tbody>
                                <?php if (count($logger)): ?>
                                    <?php foreach ($logger as $obj): ?>
                                        <tr>
                                            <td class="checkbox-column">
                                                <div class="checker">
                                                    <label>
                                                        <input type="checkbox" class="uniform">&nbsp;
                                                    </label>
                                                </div>
                                            </td>
                                            <td><?php echo $obj->description; ?></td>
                                            <td>
                                                <span class="time"><?php echo date('Y-m-d H:i:s', $obj->created_at) ?></span>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                <?php else: ?>
                                    <p>Пока-что очередь не активна!</p>
                                <?php endif; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="rowSection clearFix">
    <div class="col-md-6">
        <div class="rowSection clearFix">
            <div class="col-md-12">
                <div class="widget box">
                    <div class="widgetHeader">
                        <div class="widgetTitle">
                            <i class="fa fa-reorder"></i>
                            Очередь
                        </div>
                    </div>
                    <div class="widgetContent">
                        <div class="memorySize" id="memory"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="rowSection clearFix">
            <div class="col-md-12">
                <div class="widget box">
                    <div class="widgetHeader">
                        <div class="widgetTitle">
                            <i class="fa fa-reorder"></i>
                            Worker
                        </div>
                    </div>
                    <div class="widgetContent">
                        <div class="memorySize" id="worker"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('#memory').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Таблица очереди выгрузки'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: true,
                        format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                        style: {
                            color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                        }
                    }
                }
            },
            series: [{
                name: 'В очереди',
                colorByPoint: true,
                data: <?php echo $query; ?>
            }]
        });

        $('#worker').highcharts({
            chart: {
                type: 'pie'
            },
            title: {
                text: 'Доступно / обновлено позиций на сайте'
            },
            plotOptions: {
                series: {
                    dataLabels: {
                        enabled: true,
                        format: '{point.name}: {point.y} шт.'
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y} шт.</b><br/>'
            },
            series: [{
                name: 'Доступные',
                colorByPoint: true,
                data: <?php echo $worker; ?>
            }]
        });
    });
</script>