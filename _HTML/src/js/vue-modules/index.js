import Vue from 'vue/dist/vue';
import searchForm from './search.vue';

let $vue = document.querySelectorAll(`[data-vue]`);

for(let item of $vue) {
    if($(item).data('vue-init') !== true) {
        new Vue().$mount(item);
        $(item).data('vue-init', true);
    }
}