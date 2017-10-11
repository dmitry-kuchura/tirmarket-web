<template>
    <div class="search-form">
        <form @submit.prevent="submit">
            <span class="form-element">
                <input type="text"
                       class="form-element__input form-element__input--round"
                       name="target"
                       :placeholder="dataPlaceholder"
                       v-model="search"
                       @keyup="change" />

                <span class="search-form__icon" @click="submit">
                    <svg><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/Media/icons/icons.svg#find"></use></svg>
                </span>
            </span>
        </form>

        <search-result v-if="this.search.length > 2" :data="result" :static="text"></search-result>
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
                text: {},
                result: []
            }
        },

        props:['data-lang', 'data-placeholder'],

        methods: {

            submit() {
                if(this.search.length > 2)
                    window.location.href = `${window.location.origin}/search?query=${this.search}`;
            },

            change() {
                let $this = this;

                if(this.search.length > 2) {
                    axios.post(window.initialConfig.ajax.autocomplete, {
                        search: $this.search,
                        lang: $this.dataLang
                    })
                        .then(function (response) {
                            $this.result.splice(0, $this.result.length);
                            $this.result.push(...response.data.result.slice(0, 5));
                            $this.text = response.data.static;
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
