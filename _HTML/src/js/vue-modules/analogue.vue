<script>
    import Vue from 'vue';
    import axios from 'axios';
    import itemCard from './card.vue';
    import tableRow from './table-row.vue';

    export default Vue.component('analogue-list', {
        components: {
            'table-row': tableRow,
            'item-card': itemCard
        },

        data() {
            return {
                list: [],
                width: 0
            }
        },

        methods: {

        },

        beforeCreate() {
            let $this = this;

            axios.post(window.initialConfig.ajax.analogue, {
                params: {}
            })
                .then((response) => {
                    $this.list.push(...response.data.result);
                })
                .catch((error) => {
                    console.log(error);
                });
        },

        beforeMount() {
            this.width = window.innerWidth;

            window.addEventListener("resize", () => {
                this.width = window.innerWidth;
            }, false);
        },

        mounted() {

        },

        updated() {

        }
    });
</script>
