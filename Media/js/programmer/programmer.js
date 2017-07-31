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
            open: 'animated flipInX', // Animate.css class names
            close: 'animated flipOutX' // Animate.css class names
        }
    });
}