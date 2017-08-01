<template>

    <div class="navbar">

        <div class="mobile-menu" :class="{'mobile-menu--enable': enable}">

            <div class="mobile-menu__header">
                <div class="mobile-menu__title">
                    <div v-if="route.length" @click="back" class="mobile-menu__icon">
                        <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/Media/icons/icons.svg#arrow-prev"></use></svg>
                    </div>

                    <div class="mobile-menu__nesting">
                        <span v-if="route.length">{{ route[route.length -1].alias }}</span>
                        <span v-else>Меню</span>
                    </div>
                </div>

                <div class="mobile-menu__close" @click="close">
                    <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/Media/icons/icons.svg#cancel"></use></svg>
                </div>
            </div>

            <slot name="header"></slot>

            <div class="mobile-menu__body">
                <div class="mobile-menu__item" v-for="(item, index) in view" :key="item.alias">
                    <a href="#" class="mobile-menu__link">{{ item.alias }}</a>

                    <div class="mobile-menu__icon" v-if="item.children" @click="showSubmenu(item, index)">
                        <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/Media/icons/icons.svg#arrow-next"></use></svg>
                    </div>
                </div>
            </div>

            <slot name="footer"></slot>

        </div>

        <div class="navbar__overlay" :class="{'navbar__overlay--enable': enable}" @click="close"></div>
    </div>

</template>

<script>
    import Vue from 'vue';
    import axios from 'axios';

    export default Vue.component('simple-menu', {
        components: {},

        data() {
            return {
                enable: false,
                list: [],
                route: [],
                direction: true
            }
        },

        computed: {
            view() {
                if(this.route.length) {
                    let intermediate = this.list || [];

                    for(let item of this.route)
                        intermediate = intermediate[item.index].children;

                    return intermediate;
                } else {
                    return this.list;
                }
            },

            routeLength() {
                return this.route.length;
            }
        },

        watch: {
            routeLength(next, prev) {
                this.direction = next > prev;
            }
        },

        methods: {
            showSubmenu(data, index) {
                this.route.push({"index": index, "alias": data.alias});
            },

            back() {
                this.route.pop();
            },

            close() {
                this.enable = false;
                this.route.splice(0, this.route.length);
                document.querySelector(`body`).style.overflow = 'visible';
            },

            open() {
                this.enable = true;
                document.querySelector(`body`).style.overflow = 'hidden';
            }
        },

        beforeCreate() {
            let $this = this;

            axios.post(window.initialConfig.ajax.menu, {
                params: {}
            })
                .then((response) => {
                    this.list.push(...response.data.menu);
                })
                .catch((error) => {
                    console.log(error);
                });
        },

        mounted() {
            window.navbar = window.navbar || {};

            let trigger = document.querySelector(`[data-navbar-trigger]`);

            if(trigger) {
                trigger.addEventListener('click', () => {
                    this.open();
                });
            }

            window.navbar.open = () => {
                this.open();
            };

            window.navbar.close = () => {
                this.close();
            };
        }
    });
</script>
