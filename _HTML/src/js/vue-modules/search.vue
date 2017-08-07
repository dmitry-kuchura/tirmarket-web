<template>
    <div class="search-form">
        <form @submit.prevent>
            <span class="form-element">
                <input type="text"
                       class="form-element__input form-element__input--round"
                       name="target"
                       placeholder="Поиск"
                       v-model="search"
                       @keyup="change" />

                <span class="search-form__icon">
                    <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/Media/icons/icons.svg#find"></use></svg>
                </span>
            </span>
        </form>

        <search-result v-if="result.length" :data="result" :static="static"></search-result>
    </div>
</template>

<script>
    import Vue from 'vue';
    import axios from 'axios';

    import searchResult from './search-result.vue';

    export default Vue.component('search-form', {
        components: {
            'search-result': searchResult
        },

        data() {
            return {
                search: '',
                static: {},
                result: []
            }
        },

        methods: {
            change() {
                let $this = this;

                if(this.search.length > 2) {
                    axios.post(window.initialConfig.ajax.autocomplete, {
                        search: $this.search
                    })
                        .then(function (response) {
                            $this.result.splice(0, $this.result.length);
                            $this.result.push(...response.data.result);
                            $this.static = response.data.static;
                        })
                        .catch(function (error) {
                            console.log(error);
                        });
                } else {
                    this.result.splice(0, $this.result.length);
                }

            }
        },

        mounted() {

        },

        updated() {

        }
    });
</script>
