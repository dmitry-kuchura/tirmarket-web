<?php if (isset($result[$cur]) AND count($result[$cur])): ?>
    <?php if ($cur > 0): ?>
        <ol>
    <?php endif ?>
    <?php foreach ($result[$cur] as $obj): ?>
        <li class="dd-item dd3-item" data-id="<?php echo $obj->id; ?>">
            <div title="<?php echo __('Переместить строку'); ?>" class="dd-handle dd3-handle">Drag</div>
            <div class="dd3-content">
                <table>
                    <tr>
                        <td class="column-drag" width="1%"></td>
                        <td width="1%" class="checkbox-column">
                            <label><input type="checkbox"/></label>
                        </td>
                        <td valign="top" class="pagename-column">
                            <div class="clearFix">
                                <div class="pull-left">
                                    <div class="pull-left">
                                        <div><?php echo $obj->name; ?></div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td width="5" valign="top" class="icon-column status-column">
                            <?php echo Core\View::widget(['status' => $obj->status, 'id' => $obj->id], 'StatusList'); ?>
                        </td>
                        <td class="nav-column icon-column" valign="top">
                            <ul class="table-controls">
                                <li>
                                    <a title="<?php echo __('Управление'); ?>" href="javascript:void(0);"
                                       class="bs-tooltip dropdownToggle"><i class="fa fa-cog"></i> </a>
                                    <ul class="dropdownMenu pull-right">
                                        <li>
                                            <a title="<?php echo __('Удалить'); ?>"
                                               onclick="return confirm('<?php echo __('Это действие необратимо. Продолжить?'); ?>');"
                                               href="<?php echo '/wezom/' . Core\Route::controller() . '/delete/' . $obj->id; ?>"><i
                                                        class="fa fa-trash-o text-danger"></i> <?php echo __('Удалить'); ?>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
            <?php echo Core\View::tpl(['result' => $result, 'tpl_folder' => $tpl_folder, 'cur' => $obj->id], $tpl_folder . '/Menu'); ?>
        </li>
    <?php endforeach; ?>
    <?php if ($cur > 0): ?>
        </ol>
    <?php endif ?>
<?php endif ?>