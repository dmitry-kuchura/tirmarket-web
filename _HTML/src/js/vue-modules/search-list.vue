<script>
    import Vue from 'vue';
    import axios from 'axios';
    import tableRow from './table-row.vue';
    import itemCard from './card.vue';

    export default Vue.component('search-list', {
        components: {
            'table-row': tableRow,
            'item-card': itemCard
        },

        props: ['data-lang'],

        data() {
            return {
                list: [],
                paginate: ['results'],
                width: 0,
                static: {}
            }
        },


        methods: {},

        beforeCreate() {


        },

        beforeMount() {

            let $this = this;
            let $query = window.location.search.split("=")[1];

            axios.post(window.initialConfig.ajax.search, {
                query: $query,
                lang: $this.dataLang
            })
                .then((response) => {
                    $this.list.push(...response.data.result);
                    $this.static = response.data.static;

                    if ($this.width > 1280) $this.$refs.table.style.display = 'block';
                })
                .catch((error) => {
                    console.log(error);
                });


            this.width = window.innerWidth;

            window.addEventListener("resize", () => {
                this.width = window.innerWidth;
                if (this.width > 1280 && this.$refs.table) this.$refs.table.style.display = 'block';
            }, false);
        },

        mounted() {
        },

        updated() {
        }
    });
</script>
