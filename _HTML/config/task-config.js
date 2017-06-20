module.exports = {
    html: true,
    images: true,
    fonts: true,
    static: true,
    svgSprite: true,
    ghPages: true,
    stylesheets: true,

    javascripts: {
        entry: {
            bundle: ['./bundle.js']
        }
    },

    browserSync: {
        proxy: {
            target: 'tirmarket.loc'
        },
        customizeWebpackConfig: function (webpackConfig, env, webpack) {
            webpackConfig.output.chunkFilename = '[name].js';

            webpackConfig.module.rules = [
                {
                    test: /\.vue$/,
                    loader: 'vue-loader',
                    options: {
                        // extractCSS: true
                    }
                }
            ];

            return webpackConfig;
        }
    },

    production: {
        rev: true
    }
};


