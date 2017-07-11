/**
 * Оформление таблиц при вертикальном скроле
 *
 * @sourcecode wHTML:tableWrapper
 * @memberof   wHTML
 * @param      {Element}     [$context] - родительский элемен
 * @return     {undefined}
 */

module.exports = function( $context ) {

	let selector = '.js-table-wrapper';
	let $tableWrappers = $( selector, $context );
	if ( !$tableWrappers.length ) {
		return;
	}

	$tableWrappers.each(function(index, el) {
		let $tableWrapper = $(el);

		if ( $tableWrapper.data('scroll-inited') ) {
			return true;
		}

		$tableWrapper.data( 'scroll-inited', true );

		let $tableHolder = $tableWrapper.children( `${selector}__holder` );
		let $table = $tableHolder.children( `${selector}__table` );

		if($tableWrapper.is(':visible'))
			checkScrolledTable( $tableWrapper, $tableHolder, $table );

		let timer = null;

		$tableHolder.on('scroll', function() {
            if($tableWrapper.is(':visible'))
				checkScrolledTable( $tableWrapper, $tableHolder, $table );
		});

		$(window).on('resize', function() {
			clearTimeout( timer );
			timer = setTimeout(function() {
                if($tableWrapper.is(':visible'))
					checkScrolledTable( $tableWrapper, $tableHolder, $table );
			}, 10);
		});

	});
};


/**
 * Проверка таблицы и ее враппераб, смотрим:
 *  влезает таблица в контейнер?
 *  таблица прокручена?
 *  прокрученна до конца?
 *
 * @sourcecode  checkScrolledTable
 * @private
 *
 * @param  {Element}  $wrapper
 * @param  {Element}  $holder
 * @param  {Element}  $table
 *
 * @return  {undefined}
 */
function checkScrolledTable( $wrapper, $holder, $table ) {

	let holderWidth = $holder.innerWidth();
	let holderScroll = $holder.scrollLeft();
	let holderScrollOffset = $holder.scrollLeft()  + holderWidth + 10;
	let tableWidth = $table.innerWidth();

	let doClassLeft = 'removeClass';
	let doClassRight = 'removeClass';

	if ( holderScroll > 20) {
		doClassLeft = 'addClass';
	}

	if ( tableWidth > holderWidth && tableWidth > holderScrollOffset ) {
		doClassRight = 'addClass';
	}

	$wrapper[doClassLeft]('table-wrapper--outside-left');
	$wrapper[doClassRight]('table-wrapper--outside-right');
}
