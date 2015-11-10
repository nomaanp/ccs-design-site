# scroll down the page when the hero arrow is clicked
$('.home-page .cd-hero .arrow a').click (e) ->
    e.preventDefault()
    $('html, body').animate({scrollTop: $('.home-page2 .hero-boxes').offset().top-51}, 3000)



  
