// import axios from 'axios';

module.exports = function (context = `body`) {

    $(context).on(`click`, `[data-basket-trigger]`, function (event) {

        let ID = $(event.currentTarget).data('id');
        let count = $(event.currentTarget).data('count');

        console.log(ID);

        $.ajax({
          url: window.initialConfig.ajax.basket,
          method: "POST",
          data: {
              "action": "add",
              "id": ID,
              "count": count || 1
          },
          dataType: "json"
        }).done(function (response) {

            if(response.success) {

                $.magnificPopup.open({
                    items: {
                        src: '/Media/popups/basket.php'
                    },
                    type: 'ajax',
                    fixedContentPos: true,
                    removalDelay: 300,
                    mainClass: `zoom-in`,
                    callbacks: {
                        ajaxContentAdded () {
                            let $content = this.content;

                            let $vue = $(`[data-vue]`, $content);

                            for(let item of $vue) {
                                if($(item).data('vue-init') !== true) {
                                    new Vue().$mount(item);
                                    $(item).data('vue-init', true);
                                }
                            }
                        }
                    }
                });

            }

        });

    });

};
