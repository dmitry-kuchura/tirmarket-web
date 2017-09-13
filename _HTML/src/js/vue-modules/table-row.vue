<template>
    <div class="analogue-table__row">
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
                <a href="#" class="button" data-basket-trigger :data-id="item.id" v-if="item.exist">
                    <span>
                        <i><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/Media/icons/icons.svg#cart"></use></svg></i>
                        <span>{{ item.text.buy }}</span>
                    </span>
                </a>

                <a href="#" class="button" :data-mfp="item.text.orderLink" :data-param='`{"id": "${item.id}"}`' v-else>
                    <span>
                        <i><svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/Media/icons/icons.svg#cart"></use></svg></i>
                        <span>{{ item.text.order }}</span>
                    </span>
                </a>
            </div>
        </div>
</template>

<script>
    import Vue from 'vue';

    export default {
        props: ['item', 'text'],

        components: {},

        data() {
            return {}
        },

        methods: {},

        mounted() {},

        updated() {}
    };
</script>
