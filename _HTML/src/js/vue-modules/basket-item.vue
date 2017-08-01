<template>
    <div class="basket-item">
        <a href="#" class="basket-item__remove" @click.prevent="removeItem">
            <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/Media/icons/icons.svg#cancel"></use></svg>
        </a>

        <div class="basket-item__image">
            <img :src="item.image" alt="">
        </div>

        <div class="basket-item__body">
            <a href="#" class="basket-item__title">{{ item.title }}</a>

            <div class="_flex _grid-space-3">
                <div class="basket-item__price basket-item__price--disable" v-if="item.oldPrice">
                    {{ item.oldPrice }}
                </div>
                <div class="basket-item__price">{{ item.price }}</div>
            </div>
        </div>

        <div class="basket-item__count">
            <div class="product-counter">
                <input type="text" v-model="item.count" readonly class="product-counter__field" />
                <div class="product-counter__increment" @click="increment"></div>
                <div class="product-counter__decrement" @click="decrement"></div>
            </div>
        </div>
    </div>
</template>

<script>
    import Vue from 'vue';
    import axios from 'axios';

    export default {
        props: ['item'],

        components: {},

        data() {
            return {}
        },

        computed: {},

        methods: {
            send(action) {
                let $this = this;
                $this.$parent.load = true;

                axios.post(window.initialConfig.ajax.basket , {
                    action: action,
                    id: $this.item.id
                })
                    .then((response) => {
                        window.setTimeout(function(){
                            $this.$emit('update', response.data);
                        }, 1000);
                    })
                    .catch((error) => {
                        console.log(error);
                    });
            },

            removeItem() {
                this.send('remove');
            },

            increment() {
                /*if(this.item.count < this.item.maxCount)
                    this.item.count += 1;

                this.$forceUpdate();*/
                //this.$emit('increment', this.item.id);

                if(this.item.count < this.item.maxCount)
                    this.send('increment');
            },

            decrement() {
                /*if(this.item.count > 1)
                    this.item.count -= 1;

                this.$forceUpdate();*/
                //this.$emit('decrement', this.item.id);

                if(this.item.count > 1)
                    this.send('decrement');

            }
        },

        beforeCreate() {
            //console.log(this.item);
        },

        beforeMount() {
            //console.log(this.item);
        },

        mounted() {
            //console.log(this.item);
        },

        updated() {
            //console.log('update');
        }
    };
</script>
