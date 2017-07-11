require('jquery-validation/dist/jquery.validate.min');

function _formGetTypeName(type) {
	let type_name;
	switch (type) {
		case 'select-one':
		case 'select-multiple':
			type_name = '_select';
			break;
		case 'radio':
		case 'checkbox':
			type_name = '_checker';
			break;
		default:
			type_name = '';
	}
	return type_name;
}

function _formGetMethodMsgName(element, method) {
	let method_name;
	switch (method) {
		case 'required':
		case 'maxlength':
		case 'minlength':
		case 'rangelength':
			method_name = method + _formGetTypeName(element.type);
			break;
		default:
			method_name = method;
	}
	return method_name;
}

function _formErrorsByStep(validateConfig) {
	validateConfig.showErrors = function (errorMap, errorList) {
		if (errorList.length) {
			let firstError = errorList.shift();
			let newErrorList = [];
			newErrorList.push(firstError);
			this.errorList = newErrorList;
		}
		this.defaultShowErrors();
	};
}

function _formResetInputs(settings, elements) {
	for (let i = 0; i < elements.length; i++) {
		let element = elements[i];
		let $element = $(element);

		switch (element.type) {
			case 'submit':
			case 'reset':
			case 'button':
			case 'image':
				break;

			case 'radio':
			case 'checkbox':
				element.checked = element.defaultChecked;
				$element.trigger('change');
				break;

			case 'file':
				element.outerHTML = element.outerHTML;
				$element.trigger('change');
				break;

			default:
				element.value = element.defaultValue;
				$element.trigger('change');
		}

	}
}

function _formResetSelects(settings, elements) {
	for (let i = 0; i < elements.length; i++) {
		[].forEach.call(elements[i].options, function (element) {
			element.selected = element.defaultSelected;
		});
	}
}

// параметры по умолчанию
$.extend($.validator.defaults, {
	// переписываем дефолтные значения
	errorClass: 'is-invalid',
	validClass: 'is-valid',
	controlHolder: '.form-element',
	inputFile: 'input[type="file"]',
	ignore: ':hidden',

	// метод подсветки ошибок
	highlight: function (element, errorClass, validClass) {
		let $el;

		if (element.type === "radio") {
			$el = this.findByName(element.name);
		} else {
			$el = $(element);
		}

		$el.add($el.closest('.form-element'))
			.addClass(errorClass)
			.removeClass(validClass);
	},

	// метод отключения подсветки ошибок
	unhighlight: function (element, errorClass, validClass) {
		let $el;
		if (element.type === "radio") {
			$el = this.findByName(element.name);
		} else {
			$el = $(element);
		}

		$el.add($el.closest('.form-element'))
			.removeClass(errorClass)
			.addClass(validClass);
	},

	// обработчик ошибок
	invalidHandler: function (form, validator) {
		$(this)
			.addClass('form--no-valid')
			.data('validator').focusInvalid();
	},

	// обработчик сабмита
	submitHandler: function (form) {
		let $currentForm = $(form);
		$currentForm.removeClass('form--no-valid').addClass('form--valid');
		wHTML.formValidationOnSubmit($currentForm);
	}
});


// фикс вывода пользовательских сообщений
$.extend($.validator.prototype, {
	defaultMessage: function (element, rule) {
		let method = rule.method;
		// WezomFix
		let method_name = _formGetMethodMsgName(element, method);
		let message = this.findDefined(
			this.customMessage(element.name, method),
			this.customDataMessage(element, method),
			// title is never undefined, so handle empty string as undefined
				!this.settings.ignoreTitle && element.title || undefined,
			$.validator.messages[method_name],
				"<strong>Warning: No message defined for " + element.name + "</strong>"
			),
			theregex = /\$?\{(\d+)\}/g;
		if (typeof message === "function") {
			message = message.call(this, rule.parameters, element);
		} else if (theregex.test(message)) {
			message = $.validator.format(message.replace(theregex, "{$1}"), rule.parameters);
		}

		return message;
	}
});


// добавляем пользовательские правила
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
		return this.optional(element) || (flag);
	},

	filetype: function (value, element, param) {
		let result;
		param = typeof param === "string" ? param.replace(/,/g, "|") : "png|jpe?g|doc|pdf|gif|zip|rar|tar|html|swf|txt|xls|docx|xlsx|odt";
		if (element.multiple) {
			let files = element.files;
			for (let i = 0; i < files.length; i++) {
				let value = files[i].name;
				result = this.optional(element) || value.match(new RegExp(".(" + param + ")$", "i"));
				if (result === null) {
					break;
				}
			}
		} else {
			let result = this.optional(element) || value.match(new RegExp(".(" + param + ")$", "i"));
		}
		return result;
	},

	or: function (value, element, param) {
		let $module = $(element).parents('.js-form');
		return $module.find('.' + param + ':filled').length;
	},

	word: function (value, element) {
		return this.optional(element) || /^[a-zA-Zа-яА-ЯіІїЇєёЁЄґҐÑñ\'\`\- ]*$/.test(value);
	},

	login: function (value, element) {
		return this.optional(element) || /^[0-9a-zA-Zа-яА-ЯіІїЇєЄёЁґҐÑñ][0-9a-zA-Zа-яА-ЯіІїЇєЄґҐÑñ\-\._]+$/.test(value);
	},

	phoneUA: function (value, element, param) {
		return this.optional(element) || /^(((\+?)(38))\s?)?(([0-9]{3})|(\([0-9]{3}\)))(\-|\s)?(([0-9]{3})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{2})|([0-9]{2})(\-|\s)?([0-9]{2})(\-|\s)?([0-9]{3})|([0-9]{2})(\-|\s)?([0-9]{3})(\-|\s)?([0-9]{2}))$/.test(value);
	},

	validTrue: function (value, element, param) {
		if ($(element).data('valid') === true) {
			return true;
		} else {
			return false;
		}
	}
});



// extend translate
let translateMessages = {};
for (let key in validationTranslate) {
	let value = validationTranslate[key];
	switch(key) {
		case 'maxlength':
		case 'maxlength_checker':
		case 'maxlength_select':

		case 'minlength':
		case 'minlength_checker':
		case 'minlength_select':

		case 'rangelength':
		case 'rangelength_checker':
		case 'rangelength_select':

		case 'range':
		case 'min':
		case 'max':

		case 'filetype':
		case 'filesize':
		case 'filesizeEach':
		case 'pattern':
			translateMessages[key] = $.validator.format(value);
			break;
		default:
			translateMessages[key] = value;
	}
}

$.extend($.validator.messages, translateMessages);

// formValidationReset
wHTML.formValidationReset = function ($form) {
	let form = $form[0];
	let formValidator = $form.data('validator');
	let settings = formValidator.settings;

	formValidator.resetForm();

	_formResetInputs(settings, $form.find('input'));
	_formResetInputs(settings, $form.find('textarea'));
	_formResetSelects(settings, $form.find('select'));

	$form.find('.form-element__file-result').each(function (index, el) {
		wHTML.changeText($(this));
	});

	$form
		.removeClass('form--valid')
		.removeClass('form--no-valid');
};


// formValidationValid
wHTML.formValidationValid = function ($element) {
	let element = $element[0];

	return $element
		.closest('[data-form="true"]')
		.data('validator')
		.element(element);
};


// formValidationAfterSubmit
wHTML.formValidationAfterSubmit = wHTML.formValidationAfterSubmit || function ($form) {
	console.info('HTML => Форма отправлена');
};


// formValidationOnSubmit
if(!wHTML.formValidationOnSubmit) {
	wHTML.formValidationOnSubmit = function ($form) {
		wHTML.formValidationAfterSubmit($form);
	};
}


// changeText
wHTML.changeText = function ($element, prop, replaceFromArray) {

	let textData = $element.data('text');
	if (typeof(textData) !== 'object') {
		console.warn($element, 'Не имеет данных с тектом -> data-text=\'{"key": "value"}\'');
		return false;
	}

	replaceFromArray = replaceFromArray || [];
	prop = prop || 'default';
	let value = textData[prop];

	if (typeof(value) !== 'string') {
		console.warn($element, 'Не имеет свойтва "' + prop + '"');
		return false;
	}

	replaceFromArray.forEach(function (entry) {
		value = value.replace('%s', entry);
	});

	$element.html(value);
};


// setThousands
wHTML.setThousands = function (numberText, separator) {

	separator = separator || '.';
	numberText = '' + numberText;
	numberText = numberText.split(separator);

	let numberValue = numberText[0];
	let thousandsValue = [];
	let counter = 0;
	for (let i = numberValue.length - 1; i >= 0; i--) {
		let num = numberValue[i];
		if (++counter === 3) {
			num = ' ' + num;
			counter = 0;
		}
		thousandsValue.push(num);
	}

	thousandsValue = [thousandsValue.reverse().join(''), numberText[1]];
	return thousandsValue.join(separator);
};


// formJsChangeFile
wHTML.formJsChangeFile = function ($element, $jsFile) {

	let isValid = wHTML.formValidationValid($element);
	let $inputResult = $jsFile.find('.form-element__file-result');

	let fileList = $element[0].files;
	let names = [];
	let sizes = 0;

	let $removeBtn = $('<div class="form-element__file-remove"></div>');

	if(fileList.length) {
		if(!$jsFile.find('.form-element__file-remove').length) {
			$jsFile.append($removeBtn);
		}
	} else {
		$jsFile.find('.form-element__file-remove').remove();
	}

	if (!isValid) {
		wHTML.changeText($inputResult);
		return false;
	}

	for (let i = 0; i < fileList.length; i++) {
		let file = fileList[i];
		names.push(file.name);
		sizes += file.size;
	}

	sizes = ( sizes / 1024 ).toFixed(2);
	sizes = wHTML.setThousands(sizes);

	if (names.length > 1) {
		names = names.length;
	} else {
		names = names[0];
		names = '<span class="_ellipsis" title="' + names + '">' + names + '</span>';
	}

	wHTML.changeText($inputResult, 'changed', [names, sizes]);
};


// formValidation
module.exports = function () {

	let $forms = $('[data-form]');

	$forms.each(function (index, el) {
		const $form = $(el);
		let validator = $form.data('validator');

		// если форма инитилась -> выходим
		if (validator) return false;

		// конфиг для каждой формы
		let validateConfig = {};

		// инитим плагин
		$form.validate(validateConfig);

		$form
			.on('click', '[data-form="submit"]', function (event) {
				$form.submit();
			})

			.on('click', '[data-form="reset"]', function (event) {
				wHTML.formValidationReset($form);
			})

			.on('form:submitSuccess', function (event) {

				let $currentForm = $(event.target);
				let response = $currentForm.data('response');

				if(response.showNextSteep) {
                    $currentForm.slideUp(250, function () {
						let $nextForm = $('#steep-two');

						if ($nextForm.length) {
                            $nextForm.slideDown(250);
						}
                    });
				}

            });

		// файл

		$form.on('change', 'input[type="file"]', function (event) {
			let $this = $(this);
			let $jsFile = $this.closest('.form-element__file-holder');

			if ($jsFile.length) {
				wHTML.formJsChangeFile($this, $jsFile);
			} else {
				wHTML.formValidationValid($this);
			}
		});

		$form.on('click', '.form-element__file-remove', function (event) {
			event.stopPropagation();

			let $this = $(this);
			let $jsFile = $this.closest('.form-element__file-holder');
			let $inputFile = $jsFile.find('.form-element__file-input');

			$inputFile.val('');
			$inputFile.trigger('change');
		});

	});
};
