let $ = require('jquery');
require('magnific-popup/dist/jquery.magnific-popup.min');

function mfpAjax (context, selector) {
	context = context || 'body';
	selector = selector || '[data-mfp]';
	let data = $(selector).data('mfp') || {};

	$(selector, context).magnificPopup({
		type: data.type ? data.type : 'ajax',
		fixedContentPos: true,
        removalDelay: 300,
        mainClass: `zoom-in`,
		callbacks: {
			elementParse (item) {
				let itemData = item.el.data('param') || {};
				let itemUrl = item.el.data('mfp');
				let itemType = item.el.data('type') || 'POST';
				this.st.ajax.settings = {
					url: itemUrl,
					type: itemType.toUpperCase(),
					data: itemData
				};
			},
			ajaxContentAdded () {
				let $content = this.content;

                let $vue = $(`[data-vue]`, $content);

                for(let item of $vue) {
                    if($(item).data('vue-init') !== true) {
                        new Vue().$mount(item);
                        $(item).data('vue-init', true);
                    }
                }

				if ($('[data-form]', $content).length) {
					require.ensure([], (require) => {
						require('./validation')();
					}, 'validation');
				}
			}
		}
	});

    // gallery
	//------------------------------------

    let $gallery = $('[data-gallery-root]');

    $gallery.each(function() {

        $(this).magnificPopup({
            delegate: '[data-gallery-item]',
            type: 'image',
            removalDelay: 300,
            mainClass: `zoom-in`,
            gallery: {
                enabled:true
            }
        });
    });
}

module.exports = mfpAjax;
