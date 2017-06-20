require('slick-carousel/slick/slick');

function slider (context = 'body') {
    let $slicks = $('[data-slider]', context);

    $slicks.slick({
        infinite: true,
        speed: 300,
        slidesToShow: 4
    });
}

module.exports = slider;