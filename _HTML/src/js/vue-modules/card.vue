<template>

    <div class="_col-12 _sm-col-6 _md-col-4 _lg-col-3 _mb-3">
        <div class="item-card">
            <a :href="data.link" class="item-card__image" :style="`background-image:url(${data.image});`"></a>

            <div class="item-card__labels">
                <div class="label label--orange" v-if="data.promo"><span>акция</span></div>
                <div class="label label--purple" v-if="data.popular"><span>популярный</span></div>
                <div class="label label--green" v-if="data.new"><span>новинка</span></div>
            </div>

            <a :href="data.link" class="item-card__title">{{ data.title }}</a>

            <div class="item-card__code">Артикул: {{ data.code }}</div>

            <div class="_flex _mb-3 _justify-between">
                <div class="_col-auto">
                    <div class="item-card__price">{{ data.price }}</div>
                </div>

                <div class="_col-auto">
                    <div class="item-card__exist item-card__exist--true" v-if="data.exist">{{ data['exist-string'] }}</div>
                    <div class="item-card__exist item-card__exist--false" v-else>{{ data['exist-string'] }}</div>
                </div>
            </div>

            <div class="_flex _justify-between _items-center _grid-space-3 _flex-nowrap">
                <div class="_col-auto">
                    <a href="#" class="icon-button">
                        <i><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="icons/icons.svg#star"></use></svg></i>
                    </a>
                </div>

                <div class="_col-auto _flex-grow-1">
                    <a href="#" class="button button--full" v-if="data.exist">
                        <span>
                            <i><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="icons/icons.svg#cart"></use></svg></i>
                            <span>В корзину</span>
                        </span>
                    </a>

                    <a href="#" class="button button--full" data-mfp="/popups/order.php" :data-param='`{"id": "${data.id}"}`' v-else>
                        <span>
                            <i><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="icons/icons.svg#cart"></use></svg></i>
                            <span>Заказать</span>
                        </span>
                    </a>
                </div>
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
