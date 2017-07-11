<template>
    <div class="analogue-table">
        <div class="analogue-table__row analogue-table__row--header">
            <div class="analogue-table__col">Товар</div>
            <div class="analogue-table__col">Артикул</div>
            <div class="analogue-table__col">Оригинальны номер</div>
            <div class="analogue-table__col">Производитель</div>
            <div class="analogue-table__col">Цена</div>
            <div class="analogue-table__col">Наличие</div>
            <div class="analogue-table__col"></div>
        </div>

        <div class="analogue-table__row" v-for="item in data">
            <div class="analogue-table__col">
                <div class="_flex _flex-nowrap _items-center">
                    <div class="_col-auto">
                        <a :href="item.link" class="analogue-image">
                            <img :src="item.image" alt="" />
                        </a>
                    </div>

                    <div class="_col-auto">
                        <a :href="item.link" class="analogue-title">{{ item.title }}</a>
                    </div>
                </div>
            </div>

            <div class="analogue-table__col"><span class="product-code">{{ item.code }}</span></div>
            <div class="analogue-table__col"><span class="product-code">{{ item.number }}</span></div>
            <div class="analogue-table__col"><a :href="item.maker.link">{{ item.maker.title }}</a></div>
            <div class="analogue-table__col"><span class="analogue-price">{{ item.price }}</span></div>

            <div class="analogue-table__col">
                <span class="product-exist product-exist--true" v-if="item.exist">{{ item['exist-string'] }}</span>
                <span class="product-exist product-exist--false" v-else>{{ item['exist-string'] }}</span>
            </div>

            <div class="analogue-table__col">
                <a href="#" class="button" v-if="item.exist">
                    <span>
                        <i><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="icons/icons.svg#cart"></use></svg></i>
                        <span>В корзину</span>
                    </span>
                </a>

                <a href="#" class="button" data-mfp="/popups/order.php" :data-param='`{"id": "${item.id}"}`' v-else>
                    <span>
                        <i><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="icons/icons.svg#cart"></use></svg></i>
                        <span>Заказать</span>
                    </span>
                </a>
            </div>
        </div>

    </div>
</template>

<script>
    import Vue from 'vue';

    export default {
        props: ['data'],

        components: {

        },

        data() {
            return {}
        },

        methods: {

        },

        mounted() {

        },

        updated() {

        }
    };
</script>
