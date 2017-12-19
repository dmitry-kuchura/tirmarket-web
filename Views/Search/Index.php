<div class="title title--sm _mb-4"><?php echo __('По вашему запросу найдено'); ?> <span style="color: #163379"><?php echo $count; ?> <?php echo __('совпадения'); ?></span></div>
<search-list data-vue="true" data-lang="<?php echo I18n::$lang; ?>" inline-template>
    <div>
        <paginate name="results" :list="list" :per="4" tag="div" v-if="width > 1280">
            <div class="analogue-table" style="display: none" ref="table">
                <div class="analogue-table__row analogue-table__row--header">
                    <div class="analogue-table__col"><?php echo __('Товар'); ?></div>
                    <div class="analogue-table__col"><?php echo __('Артикул'); ?></div>
                    <div class="analogue-table__col"><?php echo __('Оригинальный номер'); ?></div>
                    <div class="analogue-table__col"><?php echo __('Производитель'); ?></div>
                    <div class="analogue-table__col"><?php echo __('Цена'); ?></div>
                    <div class="analogue-table__col"><?php echo __('Наличие'); ?></div>
                    <div class="analogue-table__col"></div>
                </div>
                <table-row v-for="item in paginated('results')" :item="item" :key="item.id" :static="static"></table-row>
            </div>
        </paginate>
        <paginate name="results" :list="list" :per="4" tag="div" class="_flex _grid-space-3" v-else>
            <item-card v-for="item in paginated('results')" :data="item" :key="item.id"></item-card>
        </paginate>
        <paginate-links for="results" :limit="3" :show-step-links="true"
                        :hide-single-page="true"></paginate-links>
    </div>
</search-list>