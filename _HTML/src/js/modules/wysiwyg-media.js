let $ = require('jquery');

function pageTextMedia (selector) {
	selector = selector || '.wysiwyg';
	var ignoreClass = 'ignore';
	var wrapperClass = 'media-wrapper';
	var holderClass = wrapperClass + '__holder';
	var _getRatio = function (element) {
		var ratio = parseFloat((+element.offsetHeight / +element.offsetWidth * 100).toFixed(2));
		if (isNaN(ratio)) {
			// страховка 16:9
			ratio = 56.25;
		}
		return ratio + '';
	};

	$(selector).each(function (index, text) {
		var $text = $(text);
		var $media = $text.find('iframe').add($text.find('video'));

		$media.each(function (index, el) {
			var $el = $(el);
			if ($el.hasClass(ignoreClass) || $el.parent().hasClass(holderClass)) {
				return;
			}

			var ratio = _getRatio(el);
			var ratioClass = holderClass + ' ' + holderClass + '--' + ratio.replace('.', '-');
			var maxWidth = el.offsetWidth;

			$el.unwrap('p').wrap('' +
				'<div class="' + wrapperClass + '" style="max-width:' + maxWidth + 'px;">' +
					'<div class="' + ratioClass + '" style="padding-top:' + ratio + '%;"></div>' +
				'</div>');
		});

		var $tables = $text.children('table');
		$tables.each(function (index, el) {
			$(el)
				.addClass('table-wrapp__table js-table-wrapper__table')
				.wrap('<div class="table-wrapper js-table-wrapper"><div class="table-wrapper__holder js-table-wrapper__holder"></div></div>');
		});
	});
}

module.exports = pageTextMedia;
