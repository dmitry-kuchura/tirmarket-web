<template>
    <div class="search-form__result">
        <div class="search-item _flex _items-center _flex-nowrap" v-for="item in data" :key="item.id">
            <div class="_col-auto">
                <a :href="item.link" class="search-item__image">
                    <img :src="item.image" :alt="item.title">
                </a>
            </div>

            <div class="_col-auto _flex-grow-1">
                <a :href="item.link" class="search-item__title">{{ item.title }}</a>
                <div class="search-item__price search-item__price--disable" v-if="item['disable-price']">
                    {{ item['disable-price'] }} грн.
                </div>
                <div class="search-item__price">{{ item.price }} грн.</div>
            </div>

            <div class="_col-auto">
                <a href="#" class="button"><span>Купить</span></a>
            </div>
        </div>
    </div>
</template>

<script>
    import Vue from 'vue/dist/vue';

    export default {
        props: ['data'],

        data() {
            return {

            }
        },

        computed: {

        },

        methods: {

        },

        mounted() {
            console.log(this.data);
        },

        updated() {

        }
    };
</script>
