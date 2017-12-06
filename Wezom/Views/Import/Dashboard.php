<div class="rowSection clearFix">
    <div class="col-md-6">
        <div class="rowSection clearFix">

            <!-- disc count-->
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
                            История запуска
                        </div>
                    </div>
                    <div class="widgetContent ">
                        <div class="mCustomScrollbar fluid scrollSize_2">

                            <table class="table table-striped table-checkable tableTask">
                                <tbody>
                                <tr>
                                    <td class="checkbox-column">
                                        <div class="checker">
                                            <label>
                                                <input type="checkbox" class="uniform">&nbsp;
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        Выполнен запуск очереди по расписанию
                                    </td>
                                    <td>
                                        <span class="time">05 декабря 2017</span>
                                    </td>
                                </tr>
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
    <div class="col-md-12">
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
                text: 'Доступно из очереди на сайте'
            },
            plotOptions: {
                series: {
                    dataLabels: {
                        enabled: true,
                        format: '{point.name}: {point.y:.1f}%'
                    }
                }
            },

            tooltip: {
                headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
                pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
            },
            series: [{
                name: 'Brands',
                colorByPoint: true,
                data: <?php echo $worker; ?>
            }]
        });
    });
</script>