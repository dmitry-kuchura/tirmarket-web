/**
 * Поиск и оформление изображений в контентовом тексте
 *  более подробно читай описание `setTextImageClassSizes`
 *
 * Нужно больше иследовать
 *  как может вести себя текстовый редактор,
 *  какие "комбинации" кода могут быть.
 *  В этом основная проблема - что код может быть разным.
 *
 * Поэтому нужно больше тестов и возможно ограничить
 *  сам редактор при работе.
 *
 *
 * @sourcecode wHTML:viewTextImages
 * @memberof   wHTML
 * @requires   {@link wHelpers:replaceFromArray }
 * @param      {Element}    [$context] - родительский элемен
 * @return     {undefined}
 */
module.exports = function( $context ) {

	let $textElements = $( '.wysiwyg', $context );
	if ( !$textElements.length ) {
		return;
	}

	let cssContetClass = 'content-image';
	let cssContetSelector = '.'+cssContetClass;

	$textElements.each(function(index, text) {
		let $text = $(text);
		if ($text.hasClass('js-ignore-content-images')) {
			return true;
		}

		let $images = $text.find('img');

		$images.each(function(index, img) {
			let $img = $(img);

			if ( $img.parent(cssContetSelector).length ) {
				return true;
			}

			let width = img.getAttribute('width') || '';
			if ( width.length ) {
				width = width.replace(/px/, '');
				if ( /%/.test(width) ) {
					width = width.replace(/%/, '');
					let parentWigth = $img.parent().width();
					width = parentWigth / 100 * parseFloat(width);
				}
				width = parseInt(width);
			} else {
				width = $img.width();
			}

			let classes = [ cssContetClass ];
			setTextImageClassSizes( classes, cssContetClass, 'width', width);

			let title = img.title;
			let inlineStyle = img.style.cssText;
			if (inlineStyle.length) {
				inlineStyle = ' style="'+inlineStyle+'"';
			}

			$img.addClass( classes.join(' ') );
		});
	});
};


/**
 * Устанавливает классы для изображения.
 *
 * Меряем ширину изображения по отрезкам в 100px
 *  [100-199, 200-299, 300-399, и тд.]
 *  При проверка ставим классы в зависимости от проверяемой величны.
 *
 * К примеру, есть у нас изображение с ширной 453px,
 *  то наша картинка получает классы:
 *
 * - _ .content-image--width-100-and-more _
 * - _ .content-image--width-200-and-more _
 * - _ .content-image--width-300-and-more _
 * - _ .content-image--width-400-and-more _
 *
 * Набор таких классов даст возможность предугадать
 *  на каком брейкпоинте и какое изображение адаптировать
 *
 * К примеру на медиа запросе в min-width 640px
 * все изображения в котнтенвом блоке с шириной 500 и больше - убрать флоаты
 *
 * ```
 *  .content-image {
 * 		&--width-500-and-more {
 * 		    include media( 640px ) {
 * 		    	display: block;
 *				float: none !important;
 *				margin-left: auto !important;
 *				margin-right: auto !important;
 * 			}
 * 		}
 *  }
 *
 * ```
 *
 * @sourcecode setTextImageClassSizes
 * @private
 * @param      {Array}   classes  The classes
 * @param      {string}  prefix   The prefix
 * @param      {string}  side     The side
 * @param      {number}  value    The value
 * @return     {undefined}
 */
function setTextImageClassSizes( classes, prefix, side, value ) {
	let classMore = prefix + '--%s-and-more';

	for (let i = 1; i <= 20; i++) {
		let size = i * 100;
		let nextSize = size + 99;
		let modificator = side + '-' + size;

		if (value < size) {
			break;
		}
		if (value > size) {
			classes.push( replaceFromArray(classMore, modificator) );
		}
	}
}


/**
 * Замена значений в строке по паттерну из массива.
 *
 * Паттерн в строке один, с определенным количеством повторений
 * 	Каждый элемент из массива заменить свой паттерн по порядковому номеру
 *
 * К примеру _replaceFromArray( '%s мыла %s', ['Мама', 'раму'] )
 * 	вернет - 'Мама мыла раму'
 *
 *
 * @sourcecode wHelpers:replaceFromArray
 * @memberof   wHelpers
 * @param      {string}   replacingString - Строка в которой будем менять
 * @param      {Array}    values - массив значений
 * @param      {string}   [pattern="%s"] - паттерн для поиска
 * @return     {string}   Заменненая строка
 */
function replaceFromArray( replacingString, values, pattern ) {

    pattern = pattern || '%s';
    if ( !Array.isArray(values) ) {
        values = [values];
    }

    for ( var i = 0; i < values.length; i++ ) {
        var value = values[i];
        replacingString = replacingString.replace( pattern, value );
    }

    return replacingString;
}