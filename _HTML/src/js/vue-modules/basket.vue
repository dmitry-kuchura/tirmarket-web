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
            increment(id) {
                this.products.forEach(function (el, index) {
                    if(el.id === id) {
                        if(el.count < el.maxCount) el.count += 1;
                    }
                });
            },

            decrement(id) {
                this.products.forEach(function (el, index) {
                    if(el.id === id) {
                        if(el.count > 0) el.count -= 1;
                    }
                });
            },

            update(data) {
                //this.products = data.list;
                this.products.splice(0, this.products.length);
                this.products.push(...data.list);

                this.totalCount = data.totalCount;
                this.totalPrice = data.totalPrice;
                this.load = false;
            }
        },

        beforeCreate() {
            let $this = this;

            axios.post('mock-data/basket.json', {
                params: {
                    "action": "default"
                }
            })
                .then((response) => {

                    window.setTimeout(function(){
                        //$this.products = response.data.list;
                        $this.products.splice(0, $this.products.length);
                        $this.products.push(...response.data.list);

                        $this.totalCount = response.data.totalCount;
                        $this.totalPrice = response.data.totalPrice;
                        $this.load = false;
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
