# scroll down the page when the hero arrow is clicked
$('.home-page .cd-hero .arrow a').click (e) ->
    e.preventDefault()
    $('html, body').animate({scrollTop: $('.home-page2 .hero-boxes').offset().top-51}, 3000)

$ ->
  header = $('#header')
  $(window).scroll ->
    scroll = $(window).scrollTop()
    if scroll >= 3
      $('#header').removeClass('static-header').addClass 'fix-header'
    else
      $('#header').removeClass('fix-header').addClass 'static-header'
    return
  return

  
