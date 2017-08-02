<?php /* @var $user object */ ?>

<div class="wysiwyg _mb-5">
    <div class="table-wrapper js-table-wrapper">
        <div class="table-wrapper__holder js-table-wrapper__holder">
            <table class="table-zebra table-wrapp__table js-table-wrapper__table">
                <tbody>
                <tr>
                    <td><b>Имя и фамилия:</b></td>
                    <td><?php echo $user->name ? $user->name : '-----'; ?></td>
                </tr>
                <tr>
                    <td><b>Телефон:</b></td>
                    <td><?php echo $user->phone ? $user->phone : '-----'; ?></td>
                </tr>
                <tr>
                    <td><b>Адрес:</b></td>
                    <td><?php echo $user->address ? $user->address : '-----'; ?></td>
                </tr>
                <tr>
                    <td><b>Email:</b></td>
                    <td><?php echo $user->email ? $user->email : '-----'; ?></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="title title--md _mb-3">Ваше транспортные средства</div>
<div class="wysiwyg _mb-5 _text-center">
    <div class="table-wrapper js-table-wrapper">
        <div class="table-wrapper__holder js-table-wrapper__holder">
            <table class="table-null table-wrapp__table js-table-wrapper__table">
                <tbody>
                <tr>
                    <th>№</th>
                    <th>Гос. номер</th>
                    <th>Марка</th>
                    <th>Модель</th>
                    <th>Год выпуска</th>
                    <th>VIN</th>
                </tr>
                <tr>
                    <td>1</td>
                    <td>АА0780ВВ</td>
                    <td>Renault</td>
                    <td>T 440</td>
                    <td>2010</td>
                    <td>ABC123456789DFE789465123</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>АА0780ВВ</td>
                    <td>Renault</td>
                    <td>T 440</td>
                    <td>2010</td>
                    <td>ABC123456789DFE789465123</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>АА0780ВВ</td>
                    <td>Renault</td>
                    <td>T 440</td>
                    <td>2010</td>
                    <td>ABC123456789DFE789465123</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>АА0780ВВ</td>
                    <td>Renault</td>
                    <td>T 440</td>
                    <td>2010</td>
                    <td>ABC123456789DFE789465123</td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>АА0780ВВ</td>
                    <td>Renault</td>
                    <td>T 440</td>
                    <td>2010</td>
                    <td>ABC123456789DFE789465123</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
<a href="#" class="button"><span>Добавить Т/С</span></a>