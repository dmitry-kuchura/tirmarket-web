// viewTextMedia
let ignore_class = 'ignore';
let wrapper_class = 'media-wrapper';
let holder_class = wrapper_class+'__holder';
let _getRatio = function(element) {
	let ratio = parseFloat((+element.offsetHeight / +element.offsetWidth * 100).toFixed(2));
	if (isNaN(ratio)) {
		// страховка 16:9
		ratio = 56.25;
	}
	return ratio + '';
};

/**
 * Поиск и оформление `iframe`, `video` и `table`
 * 	элементов в контентовом тексте
 *
 * @sourcecode wHTML:viewTextMedia
 * @memberof   wHTML
 * @param      {Element}    [$context] - родительский элемен
 * @return     {undefined}
 */
module.exports = function( $context ) {

	let $textElements = $( '.wysiwyg', $context );
	
	if ( !$textElements.length ) {
		return;
	}

	$textElements.each(function(index, text) {
		let $text = $(text);
		let $media = $text.find('iframe').add($text.find('video'));

		$media.each(function(index, el) {
			let $el = $(el);
			if ($el.hasClass(ignore_class) || $el.parent().hasClass(holder_class)) {
				return;
			}

			let ratio = _getRatio(el);
			let ratio_class = holder_class+' '+holder_class+'--'+ratio.replace('.', '-');
			let max_width = el.offsetWidth;

			$el.unwrap('p').wrap(''+
				'<div class="'+wrapper_class+'" style="max-width:'+max_width+'px;">'+
					'<div class="'+ratio_class+'" style="padding-top:'+ratio+'%;"></div>'+
				'</div>');
		});

		let $tables = $text.children('table');
		$tables.each(function(index, el) {
			$(el).addClass('table-wrapp__table js-table-wrapper__table')
				.wrap('<div class="table-wrapper js-table-wrapper"><div class="table-wrapper__holder js-table-wrapper__holder"></div></div>')
		});

		// _self.tableWrapper( $text );
	});
};
