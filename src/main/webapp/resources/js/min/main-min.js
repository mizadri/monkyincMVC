jQuery(document).ready(function($){$("[rel=tooltip]").tooltip(),$("[data-toggle=tooltip]").tooltip(),$("[rel=popover]").popover(),$("#authorTab a").click(function(t){t.preventDefault(),$(this).tab("show")}),$(".sc_tabs a").click(function(t){t.preventDefault(),$(this).tab("show")}),$(".videofit").fitVids(),$(".woocommerce-ordering .orderby").customSelect(),$(".kad-select").customSelect(),$.extend(!0,$.magnificPopup.defaults,{tClose:"",image:{titleSrc:function(t){return t.el.find("img").attr("alt")}}}),$("a[rel^='lightbox']").magnificPopup({type:"image"}),$(".kad-light-gallery").each(function(){$(this).find('a[rel^="lightbox"]').magnificPopup({type:"image",gallery:{enabled:!0},image:{titleSrc:"title"}})}),$(".kad-light-wp-gallery").each(function(){$(this).find('a[rel^="lightbox"]').magnificPopup({type:"image",gallery:{enabled:!0},image:{titleSrc:function(t){return t.el.find("img").attr("alt")}}})})}),jQuery(document).ready(function(){jQuery("ul.sf-menu").superfish({delay:200,animation:{opacity:"show",height:"show"},speed:"fast"})});var ua=navigator.userAgent.toLowerCase(),isAndroid=ua.indexOf("android")>-1;isAndroid&&(!function(t){"function"==typeof define&&define.amd&&define.amd.jQuery?define(["jquery"],t):t(jQuery)}(function(t){function e(e){return!e||void 0!==e.allowPageScroll||void 0===e.tswipe&&void 0===e.tswipeStatus||(e.allowPageScroll=c),void 0!==e.click&&void 0===e.tap&&(e.tap=e.click),e||(e={}),e=t.extend({},t.fn.tswipe.defaults,e),this.each(function(){var i=t(this),r=i.data(O);r||(r=new n(this,e),i.data(O,r))})}function n(e,n){function L(e){if(!(le()||t(e.target).closest(n.excludedElements,qe).length>0)){var i=e.originalEvent?e.originalEvent:e,r,u=E?i.touches[0]:i;return Ve=m,E?We=i.touches.length:e.preventDefault(),Ie=0,Ne=null,Xe=null,Qe=0,Ue=0,_e=0,He=1,Ce=0,Fe=he(),Ye=we(),ae(),!E||We===n.fingers||n.fingers===T||X()?(se(0,u),ze=Oe(),2==We&&(se(1,i.touches[1]),Ue=_e=be(Fe[0].start,Fe[1].start)),(n.tswipeStatus||n.pinchStatus)&&(r=j(i,Ve))):r=!1,r===!1?(Ve=x,j(i,Ve),r):(ce(!0),null)}}function P(t){var e=t.originalEvent?t.originalEvent:t;if(Ve!==S&&Ve!==x&&!oe()){var i,r=E?e.touches[0]:e,u=fe(r);if(Ge=Oe(),E&&(We=e.touches.length),Ve=y,2==We&&(0==Ue?(se(1,e.touches[1]),Ue=_e=be(Fe[0].start,Fe[1].start)):(fe(e.touches[1]),_e=be(Fe[0].end,Fe[1].end),Xe=ye(Fe[0].end,Fe[1].end)),He=me(Ue,_e),Ce=Math.abs(Ue-_e)),We===n.fingers||n.fingers===T||!E||X()){if(Ne=Ee(u.start,u.end),H(t,Ne),Ie=Se(u.start,u.end),Qe=Te(),de(Ne,Ie),(n.tswipeStatus||n.pinchStatus)&&(i=j(e,Ve)),!n.triggerOnTouchEnd||n.triggerOnTouchLeave){var a=!0;if(n.triggerOnTouchLeave){var o=Le(this);a=Pe(u.end,o)}!n.triggerOnTouchEnd&&a?Ve=R(y):n.triggerOnTouchLeave&&!a&&(Ve=R(S)),(Ve==x||Ve==S)&&j(e,Ve)}}else Ve=x,j(e,Ve);i===!1&&(Ve=x,j(e,Ve))}}function D(t){var e=t.originalEvent;return E&&e.touches.length>0?(ue(),!0):(oe()&&(We=Be),t.preventDefault(),Ge=Oe(),Qe=Te(),Q()?(Ve=x,j(e,Ve)):n.triggerOnTouchEnd||0==n.triggerOnTouchEnd&&Ve===y?(Ve=S,j(e,Ve)):!n.triggerOnTouchEnd&&G()?(Ve=S,I(e,Ve,h)):Ve===y&&(Ve=x,j(e,Ve)),ce(!1),null)}function M(){We=0,Ge=0,ze=0,Ue=0,_e=0,He=1,ae(),ce(!1)}function k(t){var e=t.originalEvent;n.triggerOnTouchLeave&&(Ve=R(S),j(e,Ve))}function A(){qe.unbind(Me,L),qe.unbind(je,M),qe.unbind(ke,P),qe.unbind(Ae,D),Re&&qe.unbind(Re,k),ce(!1)}function R(t){var e=t,i=_(),r=N(),u=Q();return!i||u?e=x:!r||t!=y||n.triggerOnTouchEnd&&!n.triggerOnTouchLeave?!r&&t==S&&n.triggerOnTouchLeave&&(e=x):e=S,e}function j(t,e){var n=void 0;return W()||V()?n=I(t,e,f):(Y()||X())&&n!==!1&&(n=I(t,e,p)),ie()&&n!==!1?n=I(t,e,d):re()&&n!==!1?n=I(t,e,g):ne()&&n!==!1&&(n=I(t,e,h)),e===x&&M(t),e===S&&(E?0==t.touches.length&&M(t):M(t)),n}function I(e,c,s){var w=void 0;if(s==f){if(qe.trigger("tswipeStatus",[c,Ne||null,Ie||0,Qe||0,We]),n.tswipeStatus&&(w=n.tswipeStatus.call(qe,e,c,Ne||null,Ie||0,Qe||0,We),w===!1))return!1;if(c==S&&q()){if(qe.trigger("tswipe",[Ne,Ie,Qe,We]),n.tswipe&&(w=n.tswipe.call(qe,e,Ne,Ie,Qe,We),w===!1))return!1;switch(Ne){case i:qe.trigger("tswipeLeft",[Ne,Ie,Qe,We]),n.tswipeLeft&&(w=n.tswipeLeft.call(qe,e,Ne,Ie,Qe,We));break;case r:qe.trigger("tswipeRight",[Ne,Ie,Qe,We]),n.tswipeRight&&(w=n.tswipeRight.call(qe,e,Ne,Ie,Qe,We));break;case u:qe.trigger("tswipeUp",[Ne,Ie,Qe,We]),n.tswipeUp&&(w=n.tswipeUp.call(qe,e,Ne,Ie,Qe,We));break;case a:qe.trigger("tswipeDown",[Ne,Ie,Qe,We]),n.tswipeDown&&(w=n.tswipeDown.call(qe,e,Ne,Ie,Qe,We))}}}if(s==p){if(qe.trigger("pinchStatus",[c,Xe||null,Ce||0,Qe||0,We,He]),n.pinchStatus&&(w=n.pinchStatus.call(qe,e,c,Xe||null,Ce||0,Qe||0,We,He),w===!1))return!1;if(c==S&&C())switch(Xe){case o:qe.trigger("pinchIn",[Xe||null,Ce||0,Qe||0,We,He]),n.pinchIn&&(w=n.pinchIn.call(qe,e,Xe||null,Ce||0,Qe||0,We,He));break;case l:qe.trigger("pinchOut",[Xe||null,Ce||0,Qe||0,We,He]),n.pinchOut&&(w=n.pinchOut.call(qe,e,Xe||null,Ce||0,Qe||0,We,He))}}return s==h?(c===x||c===S)&&(clearTimeout(Ke),Z()&&!K()?(Je=Oe(),Ke=setTimeout(t.proxy(function(){Je=null,qe.trigger("tap",[e.target]),n.tap&&(w=n.tap.call(qe,e,e.target))},this),n.doubleTapThreshold)):(Je=null,qe.trigger("tap",[e.target]),n.tap&&(w=n.tap.call(qe,e,e.target)))):s==d?(c===x||c===S)&&(clearTimeout(Ke),Je=null,qe.trigger("doubletap",[e.target]),n.doubleTap&&(w=n.doubleTap.call(qe,e,e.target))):s==g&&(c===x||c===S)&&(clearTimeout(Ke),Je=null,qe.trigger("longtap",[e.target]),n.longTap&&(w=n.longTap.call(qe,e,e.target))),w}function N(){var t=!0;return null!==n.threshold&&(t=Ie>=n.threshold),t}function Q(){var t=!1;return null!==n.cancelThreshold&&null!==Ne&&(t=ge(Ne)-Ie>=n.cancelThreshold),t}function U(){return null!==n.pinchThreshold?Ce>=n.pinchThreshold:!0}function _(){var t;return t=n.maxTimeThreshold&&Qe>=n.maxTimeThreshold?!1:!0}function H(t,e){if(n.allowPageScroll===c||X())t.preventDefault();else{var o=n.allowPageScroll===s;switch(e){case i:(n.tswipeLeft&&o||!o&&n.allowPageScroll!=w)&&t.preventDefault();break;case r:(n.tswipeRight&&o||!o&&n.allowPageScroll!=w)&&t.preventDefault();break;case u:(n.tswipeUp&&o||!o&&n.allowPageScroll!=v)&&t.preventDefault();break;case a:(n.tswipeDown&&o||!o&&n.allowPageScroll!=v)&&t.preventDefault()}}}function C(){var t=F(),e=z(),n=U();return t&&e&&n}function X(){return!!(n.pinchStatus||n.pinchIn||n.pinchOut)}function Y(){return!(!C()||!X())}function q(){var t=_(),e=N(),n=F(),i=z(),r=Q(),u=!r&&i&&n&&e&&t;return u}function V(){return!!(n.tswipe||n.tswipeStatus||n.tswipeLeft||n.tswipeRight||n.tswipeUp||n.tswipeDown)}function W(){return!(!q()||!V())}function F(){return We===n.fingers||n.fingers===T||!E}function z(){return 0!==Fe[0].end.x}function G(){return!!n.tap}function Z(){return!!n.doubleTap}function B(){return!!n.longTap}function J(){if(null==Je)return!1;var t=Oe();return Z()&&t-Je<=n.doubleTapThreshold}function K(){return J()}function te(){return!(1!==We&&E||!isNaN(Ie)&&0!==Ie)}function ee(){return Qe>n.longTapThreshold&&b>Ie}function ne(){return!(!te()||!G())}function ie(){return!(!J()||!Z())}function re(){return!(!ee()||!B())}function ue(){Ze=Oe(),Be=event.touches.length+1}function ae(){Ze=0,Be=0}function oe(){var t=!1;if(Ze){var e=Oe()-Ze;e<=n.fingerReleaseThreshold&&(t=!0)}return t}function le(){return!(qe.data(O+"_intouch")!==!0)}function ce(t){t===!0?(qe.bind(ke,P),qe.bind(Ae,D),Re&&qe.bind(Re,k)):(qe.unbind(ke,P,!1),qe.unbind(Ae,D,!1),Re&&qe.unbind(Re,k,!1)),qe.data(O+"_intouch",t===!0)}function se(t,e){var n=void 0!==e.identifier?e.identifier:0;return Fe[t].identifier=n,Fe[t].start.x=Fe[t].end.x=e.pageX||e.clientX,Fe[t].start.y=Fe[t].end.y=e.pageY||e.clientY,Fe[t]}function fe(t){var e=void 0!==t.identifier?t.identifier:0,n=pe(e);return n.end.x=t.pageX||t.clientX,n.end.y=t.pageY||t.clientY,n}function pe(t){for(var e=0;e<Fe.length;e++)if(Fe[e].identifier==t)return Fe[e]}function he(){for(var t=[],e=0;5>=e;e++)t.push({start:{x:0,y:0},end:{x:0,y:0},identifier:0});return t}function de(t,e){e=Math.max(e,ge(t)),Ye[t].distance=e}function ge(t){return Ye[t]?Ye[t].distance:void 0}function we(){var t={};return t[i]=ve(i),t[r]=ve(r),t[u]=ve(u),t[a]=ve(a),t}function ve(t){return{direction:t,distance:0}}function Te(){return Ge-ze}function be(t,e){var n=Math.abs(t.x-e.x),i=Math.abs(t.y-e.y);return Math.round(Math.sqrt(n*n+i*i))}function me(t,e){var n=e/t*1;return n.toFixed(2)}function ye(){return 1>He?l:o}function Se(t,e){return Math.round(Math.sqrt(Math.pow(e.x-t.x,2)+Math.pow(e.y-t.y,2)))}function xe(t,e){var n=t.x-e.x,i=e.y-t.y,r=Math.atan2(i,n),u=Math.round(180*r/Math.PI);return 0>u&&(u=360-Math.abs(u)),u}function Ee(t,e){var n=xe(t,e);return 45>=n&&n>=0?i:360>=n&&n>=315?i:n>=135&&225>=n?r:n>45&&135>n?a:u}function Oe(){var t=new Date;return t.getTime()}function Le(e){e=t(e);var n=e.offset(),i={left:n.left,right:n.left+e.outerWidth(),top:n.top,bottom:n.top+e.outerHeight()};return i}function Pe(t,e){return t.x>e.left&&t.x<e.right&&t.y>e.top&&t.y<e.bottom}var De=E||!n.fallbackToMouseEvents,Me=De?"touchstart":"mousedown",ke=De?"touchmove":"mousemove",Ae=De?"touchend":"mouseup",Re=De?null:"mouseleave",je="touchcancel",Ie=0,Ne=null,Qe=0,Ue=0,_e=0,He=1,Ce=0,Xe=0,Ye=null,qe=t(e),Ve="start",We=0,Fe=null,ze=0,Ge=0,Ze=0,Be=0,Je=0,Ke=null;try{qe.bind(Me,L),qe.bind(je,M)}catch($e){t.error("events not supported "+Me+","+je+" on jQuery.tswipe")}this.enable=function(){return qe.bind(Me,L),qe.bind(je,M),qe},this.disable=function(){return A(),qe},this.destroy=function(){return A(),qe.data(O,null),qe},this.option=function(e,i){if(void 0!==n[e]){if(void 0===i)return n[e];n[e]=i}else t.error("Option "+e+" does not exist on jQuery.tswipe.options");return null}}var i="left",r="right",u="up",a="down",o="in",l="out",c="none",s="auto",f="tswipe",p="pinch",h="tap",d="doubletap",g="longtap",w="horizontal",v="vertical",T="all",b=10,m="start",y="move",S="end",x="cancel",E="ontouchstart"in window,O="TouchtSwipe",L={fingers:1,threshold:75,cancelThreshold:null,pinchThreshold:20,maxTimeThreshold:null,fingerReleaseThreshold:250,longTapThreshold:500,doubleTapThreshold:200,tswipe:null,tswipeLeft:null,tswipeRight:null,tswipeUp:null,tswipeDown:null,tswipeStatus:null,pinchIn:null,pinchOut:null,pinchStatus:null,click:null,tap:null,doubleTap:null,longTap:null,triggerOnTouchEnd:!0,triggerOnTouchLeave:!1,allowPageScroll:"auto",fallbackToMouseEvents:!0,excludedElements:"label, button, input, select, textarea, a, .notSwipe"};t.fn.tswipe=function(n){var i=t(this),r=i.data(O);if(r&&"string"==typeof n){if(r[n])return r[n].apply(this,Array.prototype.slice.call(arguments,1));t.error("Method "+n+" does not exist on jQuery.tswipe")}else if(!(r||"object"!=typeof n&&n))return e.apply(this,arguments);return i},t.fn.tswipe.defaults=L,t.fn.tswipe.phases={PHASE_START:m,PHASE_MOVE:y,PHASE_END:S,PHASE_CANCEL:x},t.fn.tswipe.directions={LEFT:i,RIGHT:r,UP:u,DOWN:a,IN:o,OUT:l},t.fn.tswipe.pageScroll={NONE:c,HORIZONTAL:w,VERTICAL:v,AUTO:s},t.fn.tswipe.fingers={ONE:1,TWO:2,THREE:3,ALL:T}}),jQuery(document).ready(function($){$(".caroufedselclass").tswipe({excludedElements:"button, input, select, textarea, .noSwipe",tswipeLeft:function(){$(".caroufedselclass").trigger("next",1)},tswipeRight:function(){$(".caroufedselclass").trigger("prev",1)},tap:function(t,e){window.open(jQuery(e).closest(".grid_item").find("a").attr("href"),"_self")}})}));