// formValidationAfterSubmit
wHTML.formValidationAfterSubmit = function ($form, response) {
    console.log($form, response);
};

function generate(message, type, time) {
    noty({
        text: message,
        type: type,
        timeout: time || false,
        animation: {
            open: 'animated flipInX',
            close: 'animated flipOutX'
        }
    });
}

jQuery(document).ready(function ($) {

    $('.js-apply-price').on('click', function (e) {
        e.preventDefault();

        var mincost = $('input[name="mincost"]').val();
        var maxcost = $('input[name="maxcost"]').val();

        var priceURL = '/mincost-' + mincost + '/maxcost-' + maxcost;

        window.location.href = window.location.href.replace(/mincost-[0-9]+\//g, '').replace(/maxcost-[0-9]+\//g, '') + priceURL;
    });

    /**
     * Add to favorites button
     */
    $('.favorite-button').on('click', function (event) {
        event.preventDefault();

        var product = $(this).data('product');

        $.ajax({
            url: '/ajax/addToFavorite',
            type: 'POST',
            dataType: 'JSON',
            data: {
                product: product
            },
            success: function (data) {
                if (data.success === true) {

                    if (data.favorite) {
                        $(event.currentTarget).addClass('in-favorite-now');
                    } else {
                        $(event.currentTarget).removeClass('in-favorite-now');
                    }

                }
            }
        });
    });

    $('#catalogSort select').on('change', function () {
        var uri = $('#catalogSort').data('uri');
        var arr = uri.split('?');
        uri = arr[0];
        var old = $('#catalogSort').data('get');
        var get = [];
        if (old) {
            get.push(old);
        }
        $('#catalogSort select').each(function () {
            if ($(this).attr('name') === 'per_page') {
                get.push('per_page=' + $(this).val());
            }
            if ($(this).attr('name') === 'sort' && $(this).val()) {
                get.push('sort=' + $(this).val());
                get.push('type=' + $(this).find('option:selected').data('type'));
            }
        });
        if (get.length) {
            get = get.join('&');
            uri += '?' + get;
        }
        window.location.href = uri;
    });
});