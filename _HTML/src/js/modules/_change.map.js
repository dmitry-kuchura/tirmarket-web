(function($) {
    $.fn.wMap = function(options) {

        let settings = $.extend({
            width: '100%',
            height: 400,
            location: false,
            zoom: 15,
            marker: true,
            multiplePoint: false,
            customStyle: false
        }, options);

        let customStyle;

        if(settings.customStyle && typeof(settings.customStyle) == 'object') {
            customStyle = $.extend({
                saturation: 0,
                lightness: 0,
                gamma: 1,
                hue: false,
                textColor: false,
                invertLightness: false
            }, settings.customStyle);
        } else if (settings.customStyle == false) {
            customStyle = settings.customStyle;
        }

        let location = {
            longitude: this.data('long') || settings.location.longitude || false,
            latitude: this.data('latd') || settings.location.latitude || false
        };

        let sel = this, map;
        let infowindow = new google.maps.InfoWindow();

        sel.css({
          width: settings.width,
          height: settings.height
        });

        let methods = {
            setPlace: function(latitude, longitude) {
                let place = new google.maps.LatLng(latitude, longitude);

                return place;
            },
            setOptions: function (latitude, longitude) {
                let myOptions = {
                    zoom: settings.zoom,
                    center: this.setPlace(latitude, longitude),
                    scrollwheel: false,
                    disableDefaultUI: true,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                return myOptions;
            },
            setStyle: function(){
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

                console.log(obj);
            },
            setCenter: function (arr) {
                let minLong, maxLong, minLatd, maxLatd;

                for (let i = 0; i < arr.length; i++) {
                    if(minLong > 0) {
                        minLong = arr[i].longitude < minLong ? arr[i].longitude : minLong;
                    } else {
                        minLong = arr[i].longitude;
                    }

                    if(maxLong > 0) {
                        maxLong = arr[i].longitude > maxLong ? arr[i].longitude : maxLong;
                    } else {
                        maxLong = arr[i].longitude;
                    }

                    if(minLatd > 0) {
                        minLatd = arr[i].latitude < minLatd ? arr[i].latitude : minLatd;
                    } else {
                        minLatd = arr[i].latitude;
                    }

                    if(maxLatd > 0) {
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
            if (!settings.multiplePoint){
                map = new google.maps.Map(elem, methods.setOptions(location.latitude, location.longitude));
            } else if(settings.multiplePoint){
                let center = methods.setCenter(settings.multiplePoint);
                map = new google.maps.Map(elem, methods.setOptions(center.latitude, center.longitude));
            }

            console.log(settings.multiplePoint);

            if (!settings.multiplePoint && settings.marker) {
                methods.setMarker({
                    place: methods.setPlace(location.latitude, location.longitude), 
                    map: map, 
                    title: settings.marker.title ? settings.marker.title : null, 
                    icon: settings.marker.icon ? settings.marker.icon : null
                });

            } else if(settings.multiplePoint){
                for (let i = 0; i < settings.multiplePoint.length; i++) {
                    let point = settings.multiplePoint[i];

                    methods.setMarker({
                        place: methods.setPlace(point.latitude, point.longitude), 
                        map: map, 
                        title: point.title || null, 
                        icon: point.marker || settings.marker.icon || null
                    });
                }
            }

            map.mapTypes.set('map_style', methods.setStyle());
            map.setMapTypeId('map_style');
        }

        if(location.latitude && location.longitude) {
            sel.each(function(index, el) {
                initialize(sel.get(index));
            });
        } else {
            sel.each(function(index, el) {
                $(el).css({
                  textAlign: 'center',
                  lineHeight: settings.height + "px",
                  backgroundColor: '#ccc',
                  color: '#fff'
                }).html('<span>location is empty</span>');
            });
        }
    };
})(jQuery);