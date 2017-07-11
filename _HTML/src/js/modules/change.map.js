(function ($) {
    $.fn.wMap = function (options) {

        let settings = $.extend({
            width: '100%',
            height: 400,
            location: false,
            zoom: 15,
            marker: true,
            multiplePoint: true,
            customStyle: false
        }, options);

        settings.multiplePoint = this.data('map');

        let sel = this, map;
        let bounds = new google.maps.LatLngBounds();

        sel.css({
            width: settings.width,
            height: settings.height
        });

        let methods = {
            setPlace: function (latitude, longitude) {
                let place = new google.maps.LatLng(latitude, longitude);

                return place;
            },
            setOptions: function (latitude, longitude) {
                let myOptions = {
                    zoom: settings.zoom,
                    center: this.setPlace(latitude, longitude),
                    scrollwheel: false,
                    // disableDefaultUI: true,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                return myOptions;
            },
            setStyle: function () {
                let styles = [];

                let styledMap = new google.maps.StyledMapType(styles, {
                    name: "Change style"
                });

                return styledMap;
            },
            setMarker: function (obj) {
                let marker = new google.maps.Marker({
                    position: obj.place,
                    map: obj.map,
                    title: obj.title || null,
                    icon: obj.icon || null
                });

                return marker;
            },
            setCenter: function (arr) {
                let minLong, maxLong, minLatd, maxLatd;

                for (let i = 0; i < arr.length; i++) {
                    if (minLong > 0) {
                        minLong = arr[i].longitude < minLong ? arr[i].longitude : minLong;
                    } else {
                        minLong = arr[i].longitude;
                    }

                    if (maxLong > 0) {
                        maxLong = arr[i].longitude > maxLong ? arr[i].longitude : maxLong;
                    } else {
                        maxLong = arr[i].longitude;
                    }

                    if (minLatd > 0) {
                        minLatd = arr[i].latitude < minLatd ? arr[i].latitude : minLatd;
                    } else {
                        minLatd = arr[i].latitude;
                    }

                    if (maxLatd > 0) {
                        maxLatd = arr[i].latitude > maxLatd ? arr[i].latitude : maxLatd;
                    } else {
                        maxLatd = arr[i].latitude;
                    }
                }

                let center = {
                    latitude: (parseFloat(minLatd) + parseFloat(maxLatd)) / 2,
                    longitude: (parseFloat(minLong) + parseFloat(maxLong)) / 2
                };

                return center;
            }
        };

        function initialize(elem) {
            let center = methods.setCenter(settings.multiplePoint);
            map = new google.maps.Map(elem, methods.setOptions(center.latitude, center.longitude));

            for (let i = 0; i < settings.multiplePoint.length; i++) {
                let point = settings.multiplePoint[i];

                let location = new google.maps.LatLng(point.latitude.toString(), point.longitude.toString());
                bounds.extend(location);

                let marker = methods.setMarker({
                    place: methods.setPlace(point.latitude, point.longitude),
                    map: map,
                    title: point.title || null,
                    icon: point.marker || settings.marker.icon || null
                });

                //let infoContent = `<div class="iw"><div class="iw__title">Виробництво:</div><div class="iw__value">м. Херсон, 73000</div><div class="iw__value">вул. 23 Схiдна, д. 31</div><div class="iw__title">Дзвонiть</div><div class="iw__value">+38 066 194 02 20</div><div class="iw__value">+38 0552 32 75 00</div><div class="_mt-def"><span class="button js-mfp-ajax" data-url="hidden/callback.php">Задати питання</span></div></div>`;

                let infowindow = new google.maps.InfoWindow({
                    content: point.info
                });

                marker.addListener('click', function () {
                    infowindow.open(map, marker);
                });
            }

            map.fitBounds(bounds);
            map.panToBounds(bounds);

            map.mapTypes.set('map_style', methods.setStyle());
            map.setMapTypeId('map_style');
        }

        sel.each(function (index, el) {
            initialize(sel.get(index));
        });

    };
})(jQuery);

module.exports = function () {
    $('[data-map]').wMap({
        width: '100%',
        zoom: 6,
        marker: {
            icon: '/Media/css/pic/marker.png'
        }
    });
};