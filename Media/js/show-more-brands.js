webpackJsonp([7],{410:function(t,i){t.exports=function(){function t(){c.slideDown(350,function(){c.css("display","flex")})}function i(){c.slideUp(350)}function n(){e.hasClass("clicked")?(i(),e.attr("title",e.data("title")),e[0].innerHTML=e.data("text")):(t(),e.attr("title",e.data("title-clicked")),e[0].innerHTML=e.data("text-clicked")),e.toggleClass("clicked")}var e=$(".js-link-show-more-brands"),c=$(".js-filter-brand-item:nth-child(n+12)");e.on("click",n)}}});