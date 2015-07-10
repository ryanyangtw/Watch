
$(document).ready(function() {
$('.map').tinyMap({
'center': '台北市大同區民生西路180號',
'zoom': 14,
'marker': [{
'addr': [25.057175, 121.517409],
'label': '<strong>台北市大同區民生西路180號</strong>',
}, ]
});
$('a[href^="#"]').on('click', function(e) {
e.preventDefault();
var target = this.hash;
var $target = $(target);
$('html, body').stop().animate({
'scrollTop': $target.offset().top
}, 900, 'swing', function() {
window.location.hash = target;
});
});
});
