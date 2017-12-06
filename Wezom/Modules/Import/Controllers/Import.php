<?php

namespace Wezom\Modules\Import\Controllers;

use Core\View;
use Core\Widgets;
use Wezom\Modules\Base;
use Wezom\Modules\Import\Models\Import AS Model;

class Import extends Base
{
    public $tpl_folder = 'Import';

    function before()
    {
        parent::before();
        $this->_seo['h1'] = __('Статистика импорта');
        $this->_seo['title'] = __('Статистика импорта');
        $this->setBreadcrumbs(__('Статистика импорта'), 'wezom/import/index');
    }

    function indexAction()
    {
        $query = Model::countQuery();
        $worker = Model::countWorkerJob();
        $logger = Model::getLog();

        $this->_toolbar = Widgets::get('Toolbar_Query');
        $this->_content = View::tpl(
            [
                'query' => $query,
                'worker' => $worker,
                'logger' => $logger,
                'tpl_folder' => $this->tpl_folder,
            ], $this->tpl_folder . '/Dashboard');
    }
}