<?php

use Core\HTML;
use Modules\Contact\Controllers\Contact;

$arr = [];

?>

<div class="_flex _grid-space-4">
    <?php if (count($result)): ?>
        <?php foreach ($result as $obj): ?>

            <?php
            $arr[] = [
                'latitude' => $obj->latitude,
                'longitude' => $obj->longitude,
                'info' => Contact::generate($obj)
            ];
            ?>
            <div class="_col-12 _sm-col-6 _md-col-4 _lg-col-3 _mb-5">
                <div class="contact-card">
                    <div class="contact-card__icon">
                        <svg>
                            <use xlink:href="<?php echo HTML::media('icons/icons.svg#marker'); ?>"></use>
                        </svg>
                    </div>
                    <div class="contact-card__data">
                        <div class="contact-card__city"><?php echo $obj->name; ?></div>
                        <div class="contact-card__location"><?php echo $obj->street; ?></div>
                        <?php if ($obj->phone_1): ?>
                            <div class="contact-card__phone">
                                <a href="tel:+<?php echo preg_replace("/[^0-9]/", '', $obj->phone_1); ?>"><?php echo $obj->phone_1; ?></a>
                            </div>
                        <?php endif; ?>
                        <?php if ($obj->phone_1): ?>
                            <div class="contact-card__phone">
                                <a href="tel:+<?php echo preg_replace("/[^0-9]/", '', $obj->phone_2); ?>"><?php echo $obj->phone_2; ?></a>
                            </div>
                        <?php endif; ?>
                        <?php if ($obj->phone_1): ?>
                            <div class="contact-card__phone">
                                <a href="tel:+<?php echo preg_replace("/[^0-9]/", '', $obj->phone_3); ?>"><?php echo $obj->phone_3; ?></a>
                            </div>
                        <?php endif; ?>
                    </div>
                </div>
            </div>
        <?php endforeach; ?>
        <?php var_dump(json_encode($arr)); die; ?>
    <?php endif; ?>
</div>
<div class="_mb-4" data-map='[<?php echo json_encode($arr); ?>]'></div>