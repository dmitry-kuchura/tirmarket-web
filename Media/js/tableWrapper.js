webpackJsonp([6],{412:function(e,i){function l(e,i,l){var n=i.innerWidth(),r=i.scrollLeft(),t=i.scrollLeft()+n+10,s=l.innerWidth(),a="removeClass",o="removeClass";r>20&&(a="addClass"),s>n&&s>t&&(o="addClass"),e[a]("table-wrapper--outside-left"),e[o]("table-wrapper--outside-right")}e.exports=function(e){var i=".js-table-wrapper",n=$(i,e);n.length&&n.each(function(e,n){var r=$(n);if(r.data("scroll-inited"))return!0;r.data("scroll-inited",!0);var t=r.children(i+"__holder"),s=t.children(i+"__table");r.is(":visible")&&l(r,t,s);var a=null;t.on("scroll",function(){r.is(":visible")&&l(r,t,s)}),$(window).on("resize",function(){clearTimeout(a),a=setTimeout(function(){r.is(":visible")&&l(r,t,s)},10)})})}}});