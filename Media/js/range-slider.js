webpackJsonp([3],{415:function(t,e,r){var n=r(420);t.exports=function(){var t=document.querySelectorAll("[data-range]"),e=!0,r=!1,i=void 0;try{for(var o,a=t[Symbol.iterator]();!(e=(o=a.next()).done);e=!0)!function(){var t=o.value,e=JSON.parse(t.getAttribute("data-range")),r=t.getAttribute("data-ns"),i=document.querySelector('[data-ns="'+r+'[0]"]'),a=document.querySelector('[data-ns="'+r+'[1]"]');n.create(t,{start:[e[2],e[3]],connect:!0,tooltips:!0,range:{min:e[0],max:e[1]>e[0]?e[1]:e[1]+1},format:{to:function(t){return Math.round(t)+" грн"},from:function(t){return Math.round(t)}}}),t.noUiSlider.on("update",function(t,e){i.value=t[0].replace(" грн",""),a.value=t[1].replace(" грн","")}),t.noUiSlider.on("change",function(t,e){$(i).trigger("change"),$(a).trigger("change")})}()}catch(t){r=!0,i=t}finally{try{!e&&a.return&&a.return()}finally{if(r)throw i}}}},420:function(t,e,r){var n,i,o;/*! nouislider - 10.1.0 - 2017-07-28 17:11:18 */
!function(r){i=[],n=r,void 0!==(o="function"==typeof n?n.apply(e,i):n)&&(t.exports=o)}(function(){"use strict";function t(t){return"object"==typeof t&&"function"==typeof t.to&&"function"==typeof t.from}function e(t){t.parentElement.removeChild(t)}function r(t){t.preventDefault()}function n(t){return t.filter(function(t){return!this[t]&&(this[t]=!0)},{})}function i(t,e){return Math.round(t/e)*e}function o(t,e){var r=t.getBoundingClientRect(),n=t.ownerDocument,i=n.documentElement,o=h(n);return/webkit.*Chrome.*Mobile/i.test(navigator.userAgent)&&(o.x=0),e?r.top+o.y-i.clientTop:r.left+o.x-i.clientLeft}function a(t){return"number"==typeof t&&!isNaN(t)&&isFinite(t)}function s(t,e,r){r>0&&(p(t,e),setTimeout(function(){f(t,e)},r))}function u(t){return Math.max(Math.min(t,100),0)}function l(t){return Array.isArray(t)?t:[t]}function c(t){t=String(t);var e=t.split(".");return e.length>1?e[1].length:0}function p(t,e){t.classList?t.classList.add(e):t.className+=" "+e}function f(t,e){t.classList?t.classList.remove(e):t.className=t.className.replace(new RegExp("(^|\\b)"+e.split(" ").join("|")+"(\\b|$)","gi")," ")}function d(t,e){return t.classList?t.classList.contains(e):new RegExp("\\b"+e+"\\b").test(t.className)}function h(t){var e=void 0!==window.pageXOffset,r="CSS1Compat"===(t.compatMode||"");return{x:e?window.pageXOffset:r?t.documentElement.scrollLeft:t.body.scrollLeft,y:e?window.pageYOffset:r?t.documentElement.scrollTop:t.body.scrollTop}}function m(){return window.navigator.pointerEnabled?{start:"pointerdown",move:"pointermove",end:"pointerup"}:window.navigator.msPointerEnabled?{start:"MSPointerDown",move:"MSPointerMove",end:"MSPointerUp"}:{start:"mousedown touchstart",move:"mousemove touchmove",end:"mouseup touchend"}}function g(){var t=!1;try{var e=Object.defineProperty({},"passive",{get:function(){t=!0}});window.addEventListener("test",null,e)}catch(t){}return t}function v(){return window.CSS&&CSS.supports&&CSS.supports("touch-action","none")}function b(t,e){return 100/(e-t)}function S(t,e){return 100*e/(t[1]-t[0])}function w(t,e){return S(t,t[0]<0?e+Math.abs(t[0]):e-t[0])}function x(t,e){return e*(t[1]-t[0])/100+t[0]}function y(t,e){for(var r=1;t>=e[r];)r+=1;return r}function E(t,e,r){if(r>=t.slice(-1)[0])return 100;var n,i,o,a,s=y(r,t);return n=t[s-1],i=t[s],o=e[s-1],a=e[s],o+w([n,i],r)/b(o,a)}function C(t,e,r){if(r>=100)return t.slice(-1)[0];var n,i,o,a,s=y(r,e);return n=t[s-1],i=t[s],o=e[s-1],a=e[s],x([n,i],(r-o)*b(o,a))}function N(t,e,r,n){if(100===n)return n;var o,a,s=y(n,t);return r?(o=t[s-1],a=t[s],n-o>(a-o)/2?a:o):e[s-1]?t[s-1]+i(n-t[s-1],e[s-1]):n}function U(t,e,r){var n;if("number"==typeof e&&(e=[e]),"[object Array]"!==Object.prototype.toString.call(e))throw new Error("noUiSlider ("+Z+"): 'range' contains invalid value.");if(n="min"===t?0:"max"===t?100:parseFloat(t),!a(n)||!a(e[0]))throw new Error("noUiSlider ("+Z+"): 'range' value isn't numeric.");r.xPct.push(n),r.xVal.push(e[0]),n?r.xSteps.push(!isNaN(e[1])&&e[1]):isNaN(e[1])||(r.xSteps[0]=e[1]),r.xHighestCompleteStep.push(0)}function A(t,e,r){if(!e)return!0;r.xSteps[t]=S([r.xVal[t],r.xVal[t+1]],e)/b(r.xPct[t],r.xPct[t+1]);var n=(r.xVal[t+1]-r.xVal[t])/r.xNumSteps[t],i=Math.ceil(Number(n.toFixed(3))-1),o=r.xVal[t]+r.xNumSteps[t]*i;r.xHighestCompleteStep[t]=o}function P(t,e,r){this.xPct=[],this.xVal=[],this.xSteps=[r||!1],this.xNumSteps=[!1],this.xHighestCompleteStep=[],this.snap=e;var n,i=[];for(n in t)t.hasOwnProperty(n)&&i.push([t[n],n]);for(i.length&&"object"==typeof i[0][0]?i.sort(function(t,e){return t[0][0]-e[0][0]}):i.sort(function(t,e){return t[0]-e[0]}),n=0;n<i.length;n++)U(i[n][1],i[n][0],this);for(this.xNumSteps=this.xSteps.slice(0),n=0;n<this.xNumSteps.length;n++)A(n,this.xNumSteps[n],this)}function M(e){if(t(e))return!0;throw new Error("noUiSlider ("+Z+"): 'format' requires 'to' and 'from' methods.")}function O(t,e){if(!a(e))throw new Error("noUiSlider ("+Z+"): 'step' is not numeric.");t.singleStep=e}function k(t,e){if("object"!=typeof e||Array.isArray(e))throw new Error("noUiSlider ("+Z+"): 'range' is not an object.");if(void 0===e.min||void 0===e.max)throw new Error("noUiSlider ("+Z+"): Missing 'min' or 'max' in 'range'.");if(e.min===e.max)throw new Error("noUiSlider ("+Z+"): 'range' 'min' and 'max' cannot be equal.");t.spectrum=new P(e,t.snap,t.singleStep)}function V(t,e){if(e=l(e),!Array.isArray(e)||!e.length)throw new Error("noUiSlider ("+Z+"): 'start' option is incorrect.");t.handles=e.length,t.start=e}function F(t,e){if(t.snap=e,"boolean"!=typeof e)throw new Error("noUiSlider ("+Z+"): 'snap' option must be a boolean.")}function L(t,e){if(t.animate=e,"boolean"!=typeof e)throw new Error("noUiSlider ("+Z+"): 'animate' option must be a boolean.")}function z(t,e){if(t.animationDuration=e,"number"!=typeof e)throw new Error("noUiSlider ("+Z+"): 'animationDuration' option must be a number.")}function j(t,e){var r,n=[!1];if("lower"===e?e=[!0,!1]:"upper"===e&&(e=[!1,!0]),!0===e||!1===e){for(r=1;r<t.handles;r++)n.push(e);n.push(!1)}else{if(!Array.isArray(e)||!e.length||e.length!==t.handles+1)throw new Error("noUiSlider ("+Z+"): 'connect' option doesn't match handle count.");n=e}t.connect=n}function H(t,e){switch(e){case"horizontal":t.ort=0;break;case"vertical":t.ort=1;break;default:throw new Error("noUiSlider ("+Z+"): 'orientation' option is invalid.")}}function q(t,e){if(!a(e))throw new Error("noUiSlider ("+Z+"): 'margin' option must be numeric.");if(0!==e&&(t.margin=t.spectrum.getMargin(e),!t.margin))throw new Error("noUiSlider ("+Z+"): 'margin' option is only supported on linear sliders.")}function D(t,e){if(!a(e))throw new Error("noUiSlider ("+Z+"): 'limit' option must be numeric.");if(t.limit=t.spectrum.getMargin(e),!t.limit||t.handles<2)throw new Error("noUiSlider ("+Z+"): 'limit' option is only supported on linear sliders with 2 or more handles.")}function T(t,e){if(!a(e))throw new Error("noUiSlider ("+Z+"): 'padding' option must be numeric.");if(0!==e){if(t.padding=t.spectrum.getMargin(e),!t.padding)throw new Error("noUiSlider ("+Z+"): 'padding' option is only supported on linear sliders.");if(t.padding<0)throw new Error("noUiSlider ("+Z+"): 'padding' option must be a positive number.");if(t.padding>=50)throw new Error("noUiSlider ("+Z+"): 'padding' option must be less than half the range.")}}function R(t,e){switch(e){case"ltr":t.dir=0;break;case"rtl":t.dir=1;break;default:throw new Error("noUiSlider ("+Z+"): 'direction' option was not recognized.")}}function X(t,e){if("string"!=typeof e)throw new Error("noUiSlider ("+Z+"): 'behaviour' must be a string containing options.");var r=e.indexOf("tap")>=0,n=e.indexOf("drag")>=0,i=e.indexOf("fixed")>=0,o=e.indexOf("snap")>=0,a=e.indexOf("hover")>=0;if(i){if(2!==t.handles)throw new Error("noUiSlider ("+Z+"): 'fixed' behaviour must be used with 2 handles");q(t,t.start[1]-t.start[0])}t.events={tap:r||o,drag:n,fixed:i,snap:o,hover:a}}function B(t,e){if(t.multitouch=e,"boolean"!=typeof e)throw new Error("noUiSlider ("+Z+"): 'multitouch' option must be a boolean.")}function Y(t,e){if(!1!==e)if(!0===e){t.tooltips=[];for(var r=0;r<t.handles;r++)t.tooltips.push(!0)}else{if(t.tooltips=l(e),t.tooltips.length!==t.handles)throw new Error("noUiSlider ("+Z+"): must pass a formatter for all handles.");t.tooltips.forEach(function(t){if("boolean"!=typeof t&&("object"!=typeof t||"function"!=typeof t.to))throw new Error("noUiSlider ("+Z+"): 'tooltips' must be passed a formatter or 'false'.")})}}function $(t,e){t.ariaFormat=e,M(e)}function I(t,e){t.format=e,M(e)}function J(t,e){if(void 0!==e&&"string"!=typeof e&&!1!==e)throw new Error("noUiSlider ("+Z+"): 'cssPrefix' must be a string or `false`.");t.cssPrefix=e}function _(t,e){if(void 0!==e&&"object"!=typeof e)throw new Error("noUiSlider ("+Z+"): 'cssClasses' must be an object.");if("string"==typeof t.cssPrefix){t.cssClasses={};for(var r in e)e.hasOwnProperty(r)&&(t.cssClasses[r]=t.cssPrefix+e[r])}else t.cssClasses=e}function W(t,e){if(!0!==e&&!1!==e)throw new Error("noUiSlider ("+Z+"): 'useRequestAnimationFrame' option should be true (default) or false.");t.useRequestAnimationFrame=e}function G(t){var e={margin:0,limit:0,padding:0,animate:!0,animationDuration:300,ariaFormat:tt,format:tt},r={step:{r:!1,t:O},start:{r:!0,t:V},connect:{r:!0,t:j},direction:{r:!0,t:R},snap:{r:!1,t:F},animate:{r:!1,t:L},animationDuration:{r:!1,t:z},range:{r:!0,t:k},orientation:{r:!1,t:H},margin:{r:!1,t:q},limit:{r:!1,t:D},padding:{r:!1,t:T},behaviour:{r:!0,t:X},multitouch:{r:!0,t:B},ariaFormat:{r:!1,t:$},format:{r:!1,t:I},tooltips:{r:!1,t:Y},cssPrefix:{r:!1,t:J},cssClasses:{r:!1,t:_},useRequestAnimationFrame:{r:!1,t:W}},n={connect:!1,direction:"ltr",behaviour:"tap",multitouch:!1,orientation:"horizontal",cssPrefix:"noUi-",cssClasses:{target:"target",base:"base",origin:"origin",handle:"handle",handleLower:"handle-lower",handleUpper:"handle-upper",horizontal:"horizontal",vertical:"vertical",background:"background",connect:"connect",ltr:"ltr",rtl:"rtl",draggable:"draggable",drag:"state-drag",tap:"state-tap",active:"active",tooltip:"tooltip",pips:"pips",pipsHorizontal:"pips-horizontal",pipsVertical:"pips-vertical",marker:"marker",markerHorizontal:"marker-horizontal",markerVertical:"marker-vertical",markerNormal:"marker-normal",markerLarge:"marker-large",markerSub:"marker-sub",value:"value",valueHorizontal:"value-horizontal",valueVertical:"value-vertical",valueNormal:"value-normal",valueLarge:"value-large",valueSub:"value-sub"},useRequestAnimationFrame:!0};t.format&&!t.ariaFormat&&(t.ariaFormat=t.format),Object.keys(r).forEach(function(i){if(void 0===t[i]&&void 0===n[i]){if(r[i].r)throw new Error("noUiSlider ("+Z+"): '"+i+"' is required.");return!0}r[i].t(e,void 0===t[i]?n[i]:t[i])}),e.pips=t.pips;var i=[["left","top"],["right","bottom"]];return e.style=i[e.dir][e.ort],e.styleOposite=i[e.dir?0:1][e.ort],e}function K(t,i,a){function c(t,e){var r=vt.createElement("div");return e&&p(r,e),t.appendChild(r),r}function b(t,e){var r=c(t,i.cssClasses.origin),n=c(r,i.cssClasses.handle);return n.setAttribute("data-handle",e),n.setAttribute("tabindex","0"),n.setAttribute("role","slider"),n.setAttribute("aria-orientation",i.ort?"vertical":"horizontal"),0===e?p(n,i.cssClasses.handleLower):e===i.handles-1&&p(n,i.cssClasses.handleUpper),r}function S(t,e){return!!e&&c(t,i.cssClasses.connect)}function w(t,e){return!!i.tooltips[e]&&c(t.firstChild,i.cssClasses.tooltip)}function x(t,e,r){if("range"===t||"steps"===t)return ht.xVal;if("count"===t){if(!e)throw new Error("noUiSlider ("+Z+"): 'values' required for mode 'count'.");var n,i=100/(e-1),o=0;for(e=[];(n=o++*i)<=100;)e.push(n);t="positions"}return"positions"===t?e.map(function(t){return ht.fromStepping(r?ht.getStep(t):t)}):"values"===t?r?e.map(function(t){return ht.fromStepping(ht.getStep(ht.toStepping(t)))}):e:void 0}function y(t,e,r){function i(t,e){return(t+e).toFixed(7)/1}var o={},a=ht.xVal[0],s=ht.xVal[ht.xVal.length-1],u=!1,l=!1,c=0;return r=n(r.slice().sort(function(t,e){return t-e})),r[0]!==a&&(r.unshift(a),u=!0),r[r.length-1]!==s&&(r.push(s),l=!0),r.forEach(function(n,a){var s,p,f,d,h,m,g,v,b,S,w=n,x=r[a+1];if("steps"===e&&(s=ht.xNumSteps[a]),s||(s=x-w),!1!==w&&void 0!==x)for(s=Math.max(s,1e-7),p=w;p<=x;p=i(p,s)){for(d=ht.toStepping(p),h=d-c,v=h/t,b=Math.round(v),S=h/b,f=1;f<=b;f+=1)m=c+f*S,o[m.toFixed(5)]=["x",0];g=r.indexOf(p)>-1?1:"steps"===e?2:0,!a&&u&&(g=0),p===x&&l||(o[d.toFixed(5)]=[p,g]),c=d}}),o}function E(t,e,r){function n(t,e){var r=e===i.cssClasses.value,n=r?l:f,o=r?s:u;return e+" "+n[i.ort]+" "+o[t]}function o(t,o){o[1]=o[1]&&e?e(o[0],o[1]):o[1];var s=c(a,!1);s.className=n(o[1],i.cssClasses.marker),s.style[i.style]=t+"%",o[1]&&(s=c(a,!1),s.className=n(o[1],i.cssClasses.value),s.style[i.style]=t+"%",s.innerText=r.to(o[0]))}var a=vt.createElement("div"),s=[i.cssClasses.valueNormal,i.cssClasses.valueLarge,i.cssClasses.valueSub],u=[i.cssClasses.markerNormal,i.cssClasses.markerLarge,i.cssClasses.markerSub],l=[i.cssClasses.valueHorizontal,i.cssClasses.valueVertical],f=[i.cssClasses.markerHorizontal,i.cssClasses.markerVertical];return p(a,i.cssClasses.pips),p(a,0===i.ort?i.cssClasses.pipsHorizontal:i.cssClasses.pipsVertical),Object.keys(t).forEach(function(e){o(e,t[e])}),a}function C(){at&&(e(at),at=null)}function N(t){C();var e=t.mode,r=t.density||1,n=t.filter||!1,i=t.values||!1,o=t.stepped||!1,a=x(e,i,o),s=y(r,e,a),u=t.format||{to:Math.round};return at=ct.appendChild(E(s,n,u))}function U(){var t=rt.getBoundingClientRect(),e="offset"+["Width","Height"][i.ort];return 0===i.ort?t.width||rt[e]:t.height||rt[e]}function A(t,e,r,n){var o=function(o){return!ct.hasAttribute("disabled")&&(!d(ct,i.cssClasses.tap)&&(!!(o=P(o,n.pageOffset,n.target||e))&&(!(t===st.start&&void 0!==o.buttons&&o.buttons>1)&&((!n.hover||!o.buttons)&&(lt||o.preventDefault(),o.calcPoint=o.points[i.ort],void r(o,n))))))},a=[];return t.split(" ").forEach(function(t){e.addEventListener(t,o,!!lt&&{passive:!0}),a.push([t,o])}),a}function P(t,e,r){var n,o,a=0===t.type.indexOf("touch"),s=0===t.type.indexOf("mouse"),u=0===t.type.indexOf("pointer");if(0===t.type.indexOf("MSPointer")&&(u=!0),a&&i.multitouch){var l=function(t){return t.target===r||r.contains(t.target)};if("touchstart"===t.type){var c=Array.prototype.filter.call(t.touches,l);if(c.length>1)return!1;n=c[0].pageX,o=c[0].pageY}else{var p=Array.prototype.find.call(t.changedTouches,l);if(!p)return!1;n=p.pageX,o=p.pageY}}else if(a){if(t.touches.length>1)return!1;n=t.changedTouches[0].pageX,o=t.changedTouches[0].pageY}return e=e||h(vt),(s||u)&&(n=t.clientX+e.x,o=t.clientY+e.y),t.pageOffset=e,t.points=[n,o],t.cursor=s||u,t}function M(t){var e=t-o(rt,i.ort),r=100*e/U();return i.dir?100-r:r}function O(t){var e=100,r=!1;return nt.forEach(function(n,i){if(!n.hasAttribute("disabled")){var o=Math.abs(pt[i]-t);o<e&&(r=i,e=o)}}),r}function k(t,e,r,n){var i=r.slice(),o=[!t,t],a=[t,!t];n=n.slice(),t&&n.reverse(),n.length>1?n.forEach(function(t,r){var n=D(i,t,i[t]+e,o[r],a[r],!1);!1===n?e=0:(e=n-i[t],i[t]=n)}):o=a=[!0];var s=!1;n.forEach(function(t,n){s=B(t,r[t]+e,o[n],a[n])||s}),s&&n.forEach(function(t){V("update",t),V("slide",t)})}function V(t,e,r){Object.keys(gt).forEach(function(n){var o=n.split(".")[0];t===o&&gt[n].forEach(function(t){t.call(ot,mt.map(i.format.to),e,mt.slice(),r||!1,pt.slice())})})}function F(t,e){"mouseout"===t.type&&"HTML"===t.target.nodeName&&null===t.relatedTarget&&z(t,e)}function L(t,e){if(-1===navigator.appVersion.indexOf("MSIE 9")&&0===t.buttons&&0!==e.buttonsProperty)return z(t,e);var r=(i.dir?-1:1)*(t.calcPoint-e.startCalcPoint);k(r>0,100*r/e.baseSize,e.locations,e.handleNumbers)}function z(t,e){e.handle&&(f(e.handle,i.cssClasses.active),dt-=1),e.listeners.forEach(function(t){bt.removeEventListener(t[0],t[1])}),0===dt&&(f(ct,i.cssClasses.drag),X(),t.cursor&&(St.style.cursor="",St.removeEventListener("selectstart",r))),e.handleNumbers.forEach(function(t){V("change",t),V("set",t),V("end",t)})}function j(t,e){var n;if(1===e.handleNumbers.length){var o=nt[e.handleNumbers[0]];if(o.hasAttribute("disabled"))return!1;n=o.children[0],dt+=1,p(n,i.cssClasses.active)}t.stopPropagation();var a=[],s=A(st.move,bt,L,{target:t.target,handle:n,listeners:a,startCalcPoint:t.calcPoint,baseSize:U(),pageOffset:t.pageOffset,handleNumbers:e.handleNumbers,buttonsProperty:t.buttons,locations:pt.slice()}),u=A(st.end,bt,z,{target:t.target,handle:n,listeners:a,handleNumbers:e.handleNumbers}),l=A("mouseout",bt,F,{target:t.target,handle:n,listeners:a,handleNumbers:e.handleNumbers});a.push.apply(a,s.concat(u,l)),t.cursor&&(St.style.cursor=getComputedStyle(t.target).cursor,nt.length>1&&p(ct,i.cssClasses.drag),St.addEventListener("selectstart",r,!1)),e.handleNumbers.forEach(function(t){V("start",t)})}function H(t){t.stopPropagation();var e=M(t.calcPoint),r=O(e);if(!1===r)return!1;i.events.snap||s(ct,i.cssClasses.tap,i.animationDuration),B(r,e,!0,!0),X(),V("slide",r,!0),V("update",r,!0),V("change",r,!0),V("set",r,!0),i.events.snap&&j(t,{handleNumbers:[r]})}function q(t){var e=M(t.calcPoint),r=ht.getStep(e),n=ht.fromStepping(r);Object.keys(gt).forEach(function(t){"hover"===t.split(".")[0]&&gt[t].forEach(function(t){t.call(ot,n)})})}function D(t,e,r,n,o,a){return nt.length>1&&(n&&e>0&&(r=Math.max(r,t[e-1]+i.margin)),o&&e<nt.length-1&&(r=Math.min(r,t[e+1]-i.margin))),nt.length>1&&i.limit&&(n&&e>0&&(r=Math.min(r,t[e-1]+i.limit)),o&&e<nt.length-1&&(r=Math.max(r,t[e+1]-i.limit))),i.padding&&(0===e&&(r=Math.max(r,i.padding)),e===nt.length-1&&(r=Math.min(r,100-i.padding))),r=ht.getStep(r),!((r=u(r))===t[e]&&!a)&&r}function T(t){return t+"%"}function R(t,e){pt[t]=e,mt[t]=ht.fromStepping(e);var r=function(){nt[t].style[i.style]=T(e),Y(t),Y(t+1)};window.requestAnimationFrame&&i.useRequestAnimationFrame?window.requestAnimationFrame(r):r()}function X(){ft.forEach(function(t){var e=pt[t]>50?-1:1,r=3+(nt.length+e*t);nt[t].childNodes[0].style.zIndex=r})}function B(t,e,r,n){return!1!==(e=D(pt,t,e,r,n,!1))&&(R(t,e),!0)}function Y(t){if(it[t]){var e=0,r=100;0!==t&&(e=pt[t-1]),t!==it.length-1&&(r=pt[t]),it[t].style[i.style]=T(e),it[t].style[i.styleOposite]=T(100-r)}}function $(t,e){null!==t&&!1!==t&&("number"==typeof t&&(t=String(t)),!1===(t=i.format.from(t))||isNaN(t)||B(e,ht.toStepping(t),!1,!1))}function I(t,e){var r=l(t),n=void 0===pt[0];e=void 0===e||!!e,r.forEach($),i.animate&&!n&&s(ct,i.cssClasses.tap,i.animationDuration),ft.forEach(function(t){B(t,pt[t],!0,!1)}),X(),ft.forEach(function(t){V("update",t),null!==r[t]&&e&&V("set",t)})}function J(t){I(i.start,t)}function _(){var t=mt.map(i.format.to);return 1===t.length?t[0]:t}function W(){for(var t in i.cssClasses)i.cssClasses.hasOwnProperty(t)&&f(ct,i.cssClasses[t]);for(;ct.firstChild;)ct.removeChild(ct.firstChild);delete ct.noUiSlider}function K(){return pt.map(function(t,e){var r=ht.getNearbySteps(t),n=mt[e],i=r.thisStep.step,o=null;!1!==i&&n+i>r.stepAfter.startValue&&(i=r.stepAfter.startValue-n),o=n>r.thisStep.startValue?r.thisStep.step:!1!==r.stepBefore.step&&n-r.stepBefore.highestStep,100===t?i=null:0===t&&(o=null);var a=ht.countStepDecimals();return null!==i&&!1!==i&&(i=Number(i.toFixed(a))),null!==o&&!1!==o&&(o=Number(o.toFixed(a))),[o,i]})}function Q(t,e){gt[t]=gt[t]||[],gt[t].push(e),"update"===t.split(".")[0]&&nt.forEach(function(t,e){V("update",e)})}function tt(t){var e=t&&t.split(".")[0],r=e&&t.substring(e.length);Object.keys(gt).forEach(function(t){var n=t.split(".")[0],i=t.substring(n.length);e&&e!==n||r&&r!==i||delete gt[t]})}function et(t,e){var r=_(),n=["margin","limit","padding","range","animate","snap","step","format"];n.forEach(function(e){void 0!==t[e]&&(a[e]=t[e])});var o=G(a);n.forEach(function(e){void 0!==t[e]&&(i[e]=o[e])}),ht=o.spectrum,i.margin=o.margin,i.limit=o.limit,i.padding=o.padding,i.pips&&N(i.pips),pt=[],I(t.start||r,e)}var rt,nt,it,ot,at,st=m(),ut=v(),lt=ut&&g(),ct=t,pt=[],ft=[],dt=0,ht=i.spectrum,mt=[],gt={},vt=t.ownerDocument,bt=vt.documentElement,St=vt.body;if(ct.noUiSlider)throw new Error("noUiSlider ("+Z+"): Slider was already initialized.");return function(t){p(t,i.cssClasses.target),0===i.dir?p(t,i.cssClasses.ltr):p(t,i.cssClasses.rtl),0===i.ort?p(t,i.cssClasses.horizontal):p(t,i.cssClasses.vertical),rt=c(t,i.cssClasses.base)}(ct),function(t,e){nt=[],it=[],it.push(S(e,t[0]));for(var r=0;r<i.handles;r++)nt.push(b(e,r)),ft[r]=r,it.push(S(e,t[r+1]))}(i.connect,rt),ot={destroy:W,steps:K,on:Q,off:tt,get:_,set:I,reset:J,__moveHandles:function(t,e,r){k(t,e,pt,r)},options:a,updateOptions:et,target:ct,removePips:C,pips:N},function(t){t.fixed||nt.forEach(function(t,e){A(st.start,t.children[0],j,{handleNumbers:[e]})}),t.tap&&A(st.start,rt,H,{}),t.hover&&A(st.move,rt,q,{hover:!0}),t.drag&&it.forEach(function(e,r){if(!1!==e&&0!==r&&r!==it.length-1){var n=nt[r-1],o=nt[r],a=[e];p(e,i.cssClasses.draggable),t.fixed&&(a.push(n.children[0]),a.push(o.children[0])),a.forEach(function(t){A(st.start,t,j,{handles:[n,o],handleNumbers:[r-1,r]})})}})}(i.events),I(i.start),i.pips&&N(i.pips),i.tooltips&&function(){var t=nt.map(w);Q("update",function(e,r,n){if(t[r]){var o=e[r];!0!==i.tooltips[r]&&(o=i.tooltips[r].to(n[r])),t[r].innerHTML=o}})}(),function(){Q("update",function(t,e,r,n,o){ft.forEach(function(t){var e=nt[t],n=D(pt,t,0,!0,!0,!0),a=D(pt,t,100,!0,!0,!0),s=o[t],u=i.ariaFormat.to(r[t]);e.children[0].setAttribute("aria-valuemin",n.toFixed(1)),e.children[0].setAttribute("aria-valuemax",a.toFixed(1)),e.children[0].setAttribute("aria-valuenow",s.toFixed(1)),e.children[0].setAttribute("aria-valuetext",u)})})}(),ot}function Q(t,e){if(!t||!t.nodeName)throw new Error("noUiSlider ("+Z+"): create requires a single element, got: "+t);var r=G(e,t),n=K(t,r,e);return t.noUiSlider=n,n}var Z="10.1.0";P.prototype.getMargin=function(t){var e=this.xNumSteps[0];if(e&&t/e%1!=0)throw new Error("noUiSlider ("+Z+"): 'limit', 'margin' and 'padding' must be divisible by step.");return 2===this.xPct.length&&S(this.xVal,t)},P.prototype.toStepping=function(t){return t=E(this.xVal,this.xPct,t)},P.prototype.fromStepping=function(t){return C(this.xVal,this.xPct,t)},P.prototype.getStep=function(t){return t=N(this.xPct,this.xSteps,this.snap,t)},P.prototype.getNearbySteps=function(t){var e=y(t,this.xPct);return{stepBefore:{startValue:this.xVal[e-2],step:this.xNumSteps[e-2],highestStep:this.xHighestCompleteStep[e-2]},thisStep:{startValue:this.xVal[e-1],step:this.xNumSteps[e-1],highestStep:this.xHighestCompleteStep[e-1]},stepAfter:{startValue:this.xVal[e-0],step:this.xNumSteps[e-0],highestStep:this.xHighestCompleteStep[e-0]}}},P.prototype.countStepDecimals=function(){var t=this.xNumSteps.map(c);return Math.max.apply(null,t)},P.prototype.convert=function(t){return this.getStep(this.toStepping(t))};var tt={to:function(t){return void 0!==t&&t.toFixed(2)},from:Number};return{version:Z,create:Q}})}});