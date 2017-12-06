<?php if (Core\User::caccess() == 'edit'): ?>
    <div class="toolbar no-padding">
        <div class="btn-group">
            <a title="<?php echo __('Запустить импорт'); ?>" href="#"
               class="import1C btn btn-lg text-success bs-tooltip btn-save" data-alias="/api/v2/worker-manual">
                <i class="fa fa-check"></i>
                <span class="hidden-xx"><?php echo __('Запустить импорт'); ?></span>
            </a>
        </div>
    </div>
<?php endif ?>