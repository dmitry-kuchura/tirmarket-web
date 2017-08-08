import _debounce from 'lodash/debounce';
import _isArray from 'lodash/isArray';
import serialize from 'form-serialize';

export default function () {

	let $form = $(`.js-filter`);

	let handler = _debounce(() => {
        let formData = serialize($form[0], {hash: true});
        let queryString = ``;

        for(let key in formData) {

        	if(formData.hasOwnProperty(key)) {
                if(_isArray(formData[key])) {
					queryString += `&${key}=${formData[key].join(',')}`;
                } else {
					queryString += `&${key}=${formData[key]}`;
                }
			}

		}

        window.location.href = `${window.location.pathname}/${queryString}`;
	}, 1000);

    $form.on(`change`, `input, select`, (event) => {
        return handler();
	});

    $form.on(`reset`, (event) => {
        window.location.search = '';
    });

};
