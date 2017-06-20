import { Promise } from 'es6-promise-polyfill';
window.Promise = window.Promise || Promise;

window.jQuery = window.$ = require('jquery');

import './vue-modules';

console.log(`bundle.js has loaded!`);

window.jQuery(function ($) {

    // tabs
    require("./modules/tabs")();

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

    // wysiwyg media wrapper
    if ($('.wysiwyg').length) {
        require.ensure([], (require) => {
            require('./modules/wysiwyg-media')();
        }, 'wysiwyg-media');
    }

    // slick
    if ($(`[data-slider]`).length) {
        require.ensure([], (require) => {
            require('./modules/slider')();
        }, 'slick');
    }

});
