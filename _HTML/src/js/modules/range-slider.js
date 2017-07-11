let noUiSlider = require('nouislider');

module.exports = function () {

    let sliders = document.querySelectorAll(`[data-range]`);

    for(let item of sliders) {

        let data = JSON.parse(item.getAttribute(`data-range`));
        let ns = item.getAttribute(`data-ns`);

        let startInput = document.querySelector(`[data-ns="${ns}[0]"]`);
        let endInput = document.querySelector(`[data-ns="${ns}[1]"]`);

        noUiSlider.create(item, {
            start: [data[2], data[3]],
            connect: true,
            tooltips: true,
            range: {
                'min': data[0],
                'max': data[1]
            },
            format: {
                to: function ( value ) {
                    return Math.round(value) + ' грн';
                },
                from: function ( value ) {
                    return Math.round(value);
                }
            }
        });

        item.noUiSlider.on('update', function( values, handle ) {
            startInput.value = values[0];
            endInput.value = values[1];
        });

    }

};
