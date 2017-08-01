<?php

use Core\Widgets;

/* @var $_seo array */
/* @var $GLOBAL_MESSAGE string */
?>
<!doctype html>
<html lang="<?php echo I18n::$lang;?>" dir="ltr">
<head>
    <?php echo Widgets::get('Head', $_seo); ?>
    <?php foreach ($_seo['scripts']['head'] as $script): ?>
        <?php echo $script; ?>
    <?php endforeach ?>
    <?php echo $GLOBAL_MESSAGE; ?>
</head>
<body class="">
<?php foreach ($_seo['scripts']['body'] as $script): ?>
    <?php echo $script; ?>
<?php endforeach ?>
<div class="page-wrapper">
    <?php echo Widgets::get('Header'); ?>
    <main class="page-main">
        <div class="page-size">
            <?php echo Widgets::get('Index_Slider'); ?>
            <?php echo Widgets::get('Index_Catalog'); ?>
        </div>
        <?php echo Widgets::get('Index_Categories'); ?>
        <?php echo Widgets::get('Index_Sale'); ?>
        <?php echo Widgets::get('Index_Picking'); ?>
        <?php echo Widgets::get('Index_Manufactures'); ?>
        <?php echo Widgets::get('Index_Partners'); ?>
        <?php echo Widgets::get('Index_News'); ?>
        <div class="seo-section">
            <div class="page-size">
                <div class="title _mb-3">СЕО текст</div>
                <div class="_flex _grid-1 _md-grid-2 _grid-space-4">
                    <div class="wysiwyg _mb-4">
                        <h2>Грузовики MAN</h2>
                        <p>
                            Грузовики MAN (Maschinen-fabrik Augsburg-Nurnberg) – автомобили с мировым именем, заслуженно
                            получившие доверие украинских водителей и руководителей крупных автотранспортных компаний.
                            Грузовые автомобили МАН – лидеры на мировом рынке коммерческих грузоперевозок, большая
                            популярность этих транспортных средств подкреплена надежностью и безопасностью.
                            Подтверждением высокого качества продукции концерна MAN Group, являются награды в различных
                            номинациях.
                        </p>
                        <p>
                            Обладателями одной из таких наград стали MAN грузовики TGL серии, они получили почетное
                            звание «Truck of the Year» («Грузовой автомобиль года»).
                        </p>
                        <p>
                            В продукции концерна MAN Group воплощаются самые передовые инженерные решения и технологии,
                            что позволяет выделить грузовые автомобили MAN в отдельную категорию надежных и безопасных
                            транспортных средств, которые соответствуют всем европейским нормам качества, но при этом,
                            имеют достаточно конкурентную цену на рынке.
                        </p>
                    </div>
                    <div class="wysiwyg _mb-4">
                        <h2>Обслуживание грузовиков MAN</h2>
                        <p>
                            УКРРОСТЕХНО - это гарантийный и качественный сервис грузовиков МАН, современный сервисный
                            центр по обслуживанию грузовиков в Украине выполняет все виды ремонтных и сервисных услуг, а
                            на время ремонта автомобиля предоставляем комфортную гостиницу, приятное обслуживание и зону
                            отдыха.
                        </p>
                        <p>
                            Вы можете быть уверены в высоком качестве услуг нашего сервисного центра для грузовиков MAN,
                            ведь в штате компании УКРРОСТЕХНО работают только профессиональные специалисты прошедшие
                            специальное обучение по обслуживанию техники МАН.
                        </p>
                        <p>
                            «Официальный дилер МАН» и «Официальный сервисный центр МАН» позволяют мастерам сервиса иметь
                            в своем распоряжении передовые компьютерные средства диагностики автомобилей, доступ к базам
                            данных запчастей и технической документации грузовиков.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <?php echo Widgets::get('Footer'); ?>
</div>
<?php echo Widgets::get('HiddenData'); ?>
</body>
</html>