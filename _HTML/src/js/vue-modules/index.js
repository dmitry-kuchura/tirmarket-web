import Vue from 'vue';
import VuePaginate from 'vue-paginate';
import searchForm from './search.vue';
import analogue from './analogue.vue';
import searchResult from './search-list.vue';
import simpleBasket from './basket.vue';
import simpleMenu from './simple-menu.vue';

window.Vue = Vue;

Vue.use(VuePaginate);

let $vue = document.querySelectorAll(`[data-vue]`);

for(let item of $vue) {
    if($(item).data('vue-init') !== true) {
        new Vue().$mount(item);
        $(item).data('vue-init', true);
    }
}

