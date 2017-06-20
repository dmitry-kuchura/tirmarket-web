module.exports = function (context = `body`) {

	$(context).on(`click`, `[data-tab-trigger]`, function (event) {
		event.preventDefault();

		let tabIndex = $(this).data(`tab-trigger`);
		let NS = $(this).data(`tab-ns`);

		let $LinkList = $(`[data-tab-trigger]`).filter(`[data-tab-ns="${NS}"]`);

		$LinkList.each(function (i, item) {
			let $item = $(item);

			if($item.data('tab-trigger') == tabIndex) {
				$item.addClass('is-active');
			} else {
				$item.removeClass('is-active');
			}
		});

		let $ContentList = $(`[data-tab-content]`).filter(`[data-tab-ns="${NS}"]`);

		$ContentList.each(function (i, item) {
			let $item = $(item);

			if($item.data('tab-content') == tabIndex) {
				$item.addClass('is-active');

				/*if($item.find(`[data-slick]`).length) {

					require.ensure([], () => {
						let slickInit = require("./slick");

						slickInit($item, true);
					}, 'slick');

				}*/
			} else {
				$item.removeClass('is-active');
			}
		});

	});

};
