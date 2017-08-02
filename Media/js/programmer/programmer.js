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

    /**
     * Add to favorites button
     */
    $('.favorite-button').on('click', function () {

        var product = $(this).data('product');
        var user = $(this).data('user');

        $.ajax({
            url: '/ajax/addToFavorite',
            type: 'POST',
            dataType: 'JSON',
            data: {
                product: product,
                user: user
            },
            success: function (data) {
                if (data.success == true) {

                }
            }
        });
    });
});