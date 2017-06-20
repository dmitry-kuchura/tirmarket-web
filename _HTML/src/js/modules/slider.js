require('slick-carousel/slick/slick');

function slider (context = 'body') {
    let $slicks = $('[data-slider]', context);

    let preset = {
        'promo': {
            infinite: false,
            speed: 300,
            slidesToShow: 4
        }
    };

    $slicks.each((index, item) => {
        let $slider = $(item);
        let $carouselHolder = $slider.closest('.slider-holder');
        let $prev = $carouselHolder.find('[data-slider-prev]');
        let $next = $carouselHolder.find('[data-slider-next]');

        let presetName = $slider.data('slider') || {};

        let settings = {
            prevArrow: $prev,
            nextArrow: $next
        };

        $slider.slick($.extend(settings, preset[presetName]));
    });
}

module.exports = slider;