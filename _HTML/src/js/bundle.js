// import { Promise } from 'es6-promise-polyfill';
// window.Promise = window.Promise || Promise;
import "babel-polyfill";
window.jQuery = window.$ = require('jquery');
window.wHTML = window.wHTML || {};
import filterHandle from './modules/filter';

console.log('test');

window.jQuery(function ($) {

    // filter
    filterHandle();

    // Vue
    require("./vue-modules");

    // tabs
    require("./modules/tabs")();

    // toggle
    require("./modules/toggle")();

    // dropdown
    require("./modules/dropdown")();

    // counter
    require("./modules/counter")();

    // menu
    require("./modules/menu")();

    // basket
    require("./modules/basket")();

    // magnific
    if ($('[data-mfp], [data-gallery-root]').length) {
        require.ensure([], function (require) {
            require('./modules/mfp')();
        }, 'magnific');
    }

    // validation
    if ($('[data-form]').length) {
        require.ensure([], (require) => {
            require('./modules/validation')();
        }, 'validation');
    }


    if ($('.wysiwyg').length) {
        // wysiwyg media wrapper
        require.ensure([], (require) => {
            require('./modules/wysiwyg-media')();
        }, 'wysiwyg-media');

        // viewTextImages
        require.ensure([], () => {
            require("./modules/view-text-images")();
        }, 'viewTextImages');

        // tableWrapper
        require.ensure([], () => {
            require("./modules/table-wrapper")();
        }, 'tableWrapper');
    }

    // slick
    if ($(`[data-slider]`).length) {
        require.ensure([], (require) => {
            require('./modules/slider')();
        }, 'slick');
    }

    // range slider
    if ($('[data-range]').length) {
        require.ensure([], () => {
            let rangeInit = require("./modules/range-slider");

            rangeInit();
        }, 'range-slider');
    }

    // Google map

    const loadGoogleMapsAPI = require('load-google-maps-api');

    if($('[data-map]').length) {
        loadGoogleMapsAPI({"key": "AIzaSyDeHkq36yoP2nl_2eLXUpLvpywOEGzpnhI"}).then(function(googleMaps) {

            require.ensure([], () => {
                require("./modules/change.map");

                let $maps = $('[data-map]');

                window['init-google-map'] = () => {
                    $maps.each(function (index, element) {
                        $(element).wMap({
                            width: '100%',
                            height: 500,
                            zoom: 16,
                            marker: {
                                icon: "Media/pic/marker.png"
                            }
                        });
                    });
                };

                window['init-google-map']();

            }, 'google-map');

        }).catch((err) => {
            console.error(err);
        });
    }

    //

    (function () {
        let $header = $('.page-header--fixed');

        let headerHandler = (target) => {
            let scrollTop = $(target).scrollTop();
            let $mainHeader = $('.page-header').not('.page-header--fixed');

            if(scrollTop > $mainHeader.outerHeight()) {
                $header.addClass('page-header--visible');
            } else {
                $header.removeClass('page-header--visible');
            }
        };

        $(window).on('scroll load', (event) => headerHandler(event.currentTarget));

    }());

});
