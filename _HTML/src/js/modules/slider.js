require('slick-carousel/slick/slick');

function slider (context = 'body') {
    let $slicks = $('[data-slider]', context);

    let preset = {
        'promo': {
            infinite: false,
            speed: 300,
            slidesToShow: 4,
            slidesToScroll: 1,
            responsive: [
                {
                    breakpoint: 1200,
                    settings: {
                        slidesToShow: 3,
                    }
                },{
                    breakpoint: 870,
                    settings: {
                        slidesToShow: 2,
                    }
                },{
                    breakpoint: 560,
                    settings: {
                        slidesToShow: 1,
                    }
                }
            ]
        },
        'product': {
            slidesToShow: 1,
            slidesToScroll: 1,
            asNavFor: '[data-slider="product-thumb"]'
        },
        'product-thumb': {
            vertical: true,
            slidesToShow: 3,
            slidesToScroll: 1,
            centerMode: true,
            focusOnSelect: true,
            asNavFor: '[data-slider="product"]'
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