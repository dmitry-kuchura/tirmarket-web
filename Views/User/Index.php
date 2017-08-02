<?php

use Core\Widgets;

/* @var $user object */
?>

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
<?php echo Widgets::get('User_Transport'); ?>