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

        data() {
            return {
                list: [],
                paginate: ['results'],
                width: 0
            }
        },

        methods: {},

        beforeCreate() {
            let $this = this;
            let $query = window.location.search.split("=")[1];
            axios.post(window.initialConfig.ajax.search, {
                params: {
                    'query' : $query
                }
            })
                .then((response) => {
                    $this.list.push(...response.data);

                    if($this.width > 1280) $this.$refs.table.style.display = 'block';
                })
                .catch((error) => {
                    console.log(error);
                });
        },

        beforeMount() {
            this.width = window.innerWidth;

            window.addEventListener("resize", () => {
                this.width = window.innerWidth;
                if(this.width > 1280 && this.$refs.table) this.$refs.table.style.display = 'block';
            }, false);
        },

        mounted() {},

        updated() {}
    });
</script>
