let $ = require('jquery');
require('jquery-validation/dist/jquery.validate.min');

$.extend($.validator.messages, {
	required: 'Это поле необходимо заполнить.',
	remote: 'Пожалуйста, введите правильное значение.',
	email: 'Пожалуйста, введите корректный адрес электронной почты.',
	url: 'Пожалуйста, введите корректный URL.',
	date: 'Пожалуйста, введите корректную дату.',
	dateISO: 'Пожалуйста, введите корректную дату в формате ISO.',
	number: 'Пожалуйста, введите число.',
	digits: 'Пожалуйста, вводите только цифры.',
	creditcard: 'Пожалуйста, введите правильный номер кредитной карты.',
	equalTo: 'Пожалуйста, введите такое же значение ещё раз.',
	extension: 'Пожалуйста, выберите файл с правильным расширением.',
	maxlength: $.validator.format('Пожалуйста, введите не больше {0} символов.'),
	minlength: $.validator.format('Пожалуйста, введите не меньше {0} символов.'),
	rangelength: $.validator.format('Пожалуйста, введите значение длиной от {0} до {1} символов.'),
	range: $.validator.format('Пожалуйста, введите число от {0} до {1}.'),
	max: $.validator.format('Пожалуйста, введите число, меньшее или равное {0}.'),
	min: $.validator.format('Пожалуйста, введите число, большее или равное {0}.'),
	phoneUA: 'Пожалуйста, введите полный номер телефона.'
});

$.extend($.validator.methods, {
	email: function (value, element) {
		return this.optional(element) || /^(([a-zA-Z0-9\&\+\-\=\_])+((\.([a-zA-Z0-9\&\+\-\=\_]){1,})+)?){1,64}\@([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6}$/.test(value);
	},
	password: function (value, element) {
		return this.optional(element) || /^\S.*$/.test(value);
	},
	filesize: function (value, element, param) {
		let kb = 0;

		for (let i = 0; i < element.files.length; i++) {
			kb += element.files[i].size;
		}
		return this.optional(element) || (kb / 1024 <= param);
	},
	filesizeEach: function (value, element, param) {
		let flag = true;

		for (let i = 0; i < element.files.length; i++) {
			if (element.files[i].size / 1024 > param) {
				flag = false;
				break;
			}
		}
		return this.optional(element) || flag;
	},
	filetype: function (value, element, param) {
		let result;
		let extensions = 'png|jpe?g|doc|pdf|gif|zip|rar|tar|html|swf|txt|xls|docx|xlsx|odt';

		param = typeof param === 'string' ? param.replace(/,/g, '|') : extensions;
		if (element.multiple) {
			let files = element.files;

			for (let i = 0; i < files.length; i++) {
				let value = files[i].name;
				let valueMatch = value.match(new RegExp('.(' + param + ')$', 'i'));

				result = this.optional(element) || valueMatch;
				if (result === null) {
					break;
				}
			}
		} else {
			let valueMatch = value.match(new RegExp('\\.(' + param + ')$', 'i'));

			result = this.optional(element) || valueMatch;
		}
		return result;
	},
	or: function (value, element, param) {
		let $module = $(element).parents('.js-form');

		return $module.find('.' + param + ':filled').length;
	},
	word: function (value, element) {
		let testValue = /^[a-zA-Zа-яА-ЯіІїЇєёЁЄґҐĄąĆćĘęŁłŃńÓóŚśŹźŻż\'\`\- ]*$/.test(value);

		return this.optional(element) || testValue;
	},
	login: function (value, element) {
		let testValue = /^[0-9a-zA-Zа-яА-ЯіІїЇєЄёЁґҐ][0-9a-zA-Zа-яА-ЯіІїЇєЄґҐĄąĆćĘęŁłŃńÓóŚśŹźŻż\-\._]+$/.test(value);

		return this.optional(element) || testValue;
	},
	phoneUA: function (value, element) {
		return this.optional(element) || /^(((\+?)(38))\s?)?(([0-9]{3})|(\([0-9]{3}\)))(\-|\s)?(([0-9]{3})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{2})|([0-9]{2})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{3})|([0-9]{2})(\-|\s)?([0-9]{3})(\-|\s)?([0-9]{2}))$/.test(value);
	},
	phone: function (value, element) {
		return $(element).data('valid');
		// return this.optional(element) || /^(((\+?)(\d{1,3}))\s?)?(([0-9]{0,4})|(\([0-9]{3}\)))(\-|\s)?(([0-9]{3})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{2})|([0-9]{2})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{3})|([0-9]{2})(\-|\s)?([0-9]{3})(\-|\s)?([0-9]{2}))$/.test(value);
	},
	validTrue: function (value, element) {
		if ($(element).data('valid') === true) {
			return true;
		} else {
			return false;
		}
	}
});

$.validator.addClassRules({
	'js-validate-as-email': {
		email: true
	},

	'js-validate-as-login': {
		login: true,
		minlength: 2
	},

	'js-validate-as-phone': {
		phone: true,
		minlength: 8
	},

	'js-validate-as-phone-ua': {
		phoneUA: true,
		minlength: 8
	},

	'js-validate-as-name': {
		word: true,
		minlength: 2
	},

	'js-validate-as-message': {
		minlength: 20,
		maxlength: 2000
	}
});

function highlightForm (mtd) {
	let $form = $(this.currentForm);
	let noValid = this.settings.formNoValid;
	let valid = this.settings.formValid;

	if (mtd === 'off') {
		$form.removeClass(noValid)
			.addClass(valid);
	} else {
		$form.removeClass(valid)
			.addClass(noValid);
	}
}

function validation (context = 'body') {
	$('[data-form]', context).each(function () {
		$(this).validate({
			ignore: ':hidden, .js-ignore',
			errorClass: 'is-invalid',
			validClass: 'is-valid',
			formNoValid: 'is-invalid',
			formValid: 'is-valid',
			highlight: function (element, errorClass, validClass) {
				let $element = $(element);

				$element.removeClass(validClass).addClass(errorClass);
				highlightForm.call(this);
			},
			unhighlight: function (element, errorClass, validClass) {
				let $element = $(element);
				let errorsCount = this.numberOfInvalids();

				$element.removeClass(errorClass).addClass(validClass);
				if (errorsCount < 1) {
					highlightForm.call(this, 'off');
				}
			},
			submitHandler: function (form) {
				let $form = $(form);

				highlightForm.call(this, 'off');
				$form.addClass('is-pending');
			}
		});

	});
}

module.exports = validation;
