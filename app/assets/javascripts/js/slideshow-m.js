function cycle(){
  $('.slideshow :last').animate({opacity:0}, 500, function() {
    $(this).prependTo('.slideshow').css({opacity:1});
  });
}
window.setInterval(cycle, 5000);