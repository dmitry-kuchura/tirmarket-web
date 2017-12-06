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

                                        Загрузить товары в каталог
                                    </td>
                                    <td>
                                        <span class="time">13 июня 2014</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <div class="checker">
                                            <label>
                                                <input type="checkbox" class="uniform">&nbsp;
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        Перезвонить клиенту по поводу доставки
                                    </td>
                                    <td>
                                        <span class="time">13 июня 2014</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="checkbox-column">
                                        <div class="checker">
                                            <label>
                                                <input type="checkbox" class="uniform" checked>&nbsp;
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        Отправить товар
                                    </td>
                                    <td>
                                        <span class="time">13 июня 2014</span>
                                    </td>

                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <div class="checker">
                                            <label>
                                                <input type="checkbox" class="uniform">&nbsp;
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        Сходить вечером в кино
                                    </td>
                                    <td>
                                        <span class="time">13 июня 2014</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <div class="checker">
                                            <label>
                                                <input type="checkbox" class="uniform">&nbsp;
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        Загрузить товары в каталог
                                    </td>
                                    <td>
                                        <span class="time">13 июня 2014</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <div class="checker">
                                            <label>
                                                <input type="checkbox" class="uniform">&nbsp;
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        Перезвонить клиенту по поводу доставки
                                    </td>
                                    <td>
                                        <span class="time">13 июня 2014</span>
                                    </td>
                                </tr>

                                <tr>
                                    <td class="checkbox-column">
                                        <div class="checker">
                                            <label>
                                                <input type="checkbox" class="uniform">&nbsp;
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        Отправить товар
                                    </td>
                                    <td>
                                        <span class="time">13 июня 2014</span>
                                    </td>

                                </tr>
                                <tr>
                                    <td class="checkbox-column">
                                        <div class="checker">
                                            <label>
                                                <input type="checkbox" class="uniform">&nbsp;
                                            </label>
                                        </div>
                                    </td>
                                    <td>
                                        Сходить вечером в кино
                                    </td>
                                    <td>
                                        <span class="time">13 июня 2014</span>
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

<script>
    $(document).ready(function () {
        $('#memory').highcharts({
            // Highcharts.chart('#memory', {
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
                data: [{
                    name: 'Товары',
                    y: <?php echo $products; ?>,
                    sliced: true,
                    selected: true
                }, {
                    name: 'Категори',
                    y: <?php echo $categories; ?>,
                    sliced: true
                }]
            }]
        });
    });
</script>