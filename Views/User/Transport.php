<div class="_col-12 _md-col-6">
    <form class="_mb-5" data-form data-ajax="addTransport">
        <div class="form-label"><?php echo __('Гос. номер'); ?></div>
        <div class="form-element _mb-3">
            <input type="text" class="form-element__input" data-name="gos_number" name="number" required>
        </div>
        <div class="form-label"><?php echo __('Марка'); ?></div>
        <div class="form-element _mb-3">
            <input type="text" class="form-element__input" data-name="mark" name="mark" required>
        </div>
        <div class="form-label"><?php echo __('Модель'); ?></div>
        <div class="form-element _mb-3">
            <input type="text" class="form-element__input" data-name="model" name="model" required>
        </div>
        <div class="form-label"><?php echo __('Год выпуска'); ?></div>
        <div class="form-element _mb-3">
            <input type="text" class="form-element__input" data-name="year" name="year" required>
        </div>
        <div class="form-label"><?php echo __('VIN'); ?></div>
        <div class="form-element _mb-3">
            <input type="text" class="form-element__input" data-name="vin" name="vin" required>
        </div>
        <input type="hidden" data-name="token" value="<?php echo $_SESSION['token']; ?>"/>
        <input type="hidden" data-name="lang" value="<?php echo I18n::$lang; ?>">
        <button class="button _pl-5 _pr-5" type="submit">
            <span><?php echo __('Добавить'); ?></span>
        </button>
    </form>
</div>