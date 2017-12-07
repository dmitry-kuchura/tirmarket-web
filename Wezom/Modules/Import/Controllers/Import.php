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
        $this->_seo['h1'] = __('Импорт 1С');
        $this->_seo['title'] = __('Импорт 1С');
        $this->setBreadcrumbs(__('Импорт 1С'), 'wezom/import/index');
    }

    function indexAction()
    {
        $query = Model::countQuery();
        $worker = Model::countWorkerJob();
        $logger = Model::getLog();
        $check = Model::checkQuery();

        $this->_toolbar = Widgets::get('Toolbar_Query');
        $this->_content = View::tpl(
            [
                'check' => $check,
                'query' => $query,
                'worker' => $worker,
                'logger' => $logger,
                'tpl_folder' => $this->tpl_folder,
            ], $this->tpl_folder . '/Dashboard');
    }
}