<script>
    import Vue from 'vue';
    import axios from 'axios';

    import basketItem from './basket-item.vue';

    export default Vue.component('simple-basket', {
        components: {
            'basket-item': basketItem
        },

        data() {
            return {
                products: [],
                totalCount: 0,
                totalPrice: 0,
                load: true
            }
        },

        computed: {

        },

        methods: {
            update(data) {
                //this.products = data.list;
                this.products.splice(0, this.products.length);
                this.products.push(...data.list);

                this.totalCount = data.totalCount;
                this.totalPrice = data.totalPrice;
                this.load = false;

                $('[data-cart-count]').each(function () {
                    $(this).text(data.totalCount);
                });
            }
        },

        beforeCreate() {
            let $this = this;

            axios.post(window.initialConfig.ajax.basket , {
                "action": "default"
            })
                .then((response) => {

                    window.setTimeout(function(){
                        //$this.products = response.data.list;
                        $this.products.splice(0, $this.products.length);
                        $this.products.push(...response.data.list);

                        $this.totalCount = response.data.totalCount;
                        $this.totalPrice = response.data.totalPrice;
                        $this.load = false;

                        $('[data-cart-count]').each(function () {
                            $(this).text(response.data.totalCount);
                        });
                    }, 1000);

                })
                .catch((error) => {
                    console.log(error);
                });
        },

        beforeMount() {},

        mounted() {},

        updated() {}
    });
</script>
