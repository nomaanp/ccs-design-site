# share drop downs
$('#header .share .share-btn').click (e) ->
    e.preventDefault()
    $ul = $(this).siblings('ul')
    if $ul.hasClass('hidden')
        $(this).addClass('expanded')
        $ul.slideDown(200, 'swing').removeClass('hidden')
    else
        $ul.addClass('hidden').slideUp(200, 'swing', => $(this).removeClass('expanded'))

# open share link in a new window
$('#header .share .share-ul a').click (e) ->
    e.preventDefault()
    $('#header .share .share-btn').click()
    window.open($(this).attr('href'), '', 'height=500,width=600')

# open side navigation
$('#header .menu .menu-btn').click (e) ->
    e.preventDefault()
    $sidenav = $('#sidenav')
    if $sidenav.hasClass('hidden')
        $sidenav.removeClass('hidden').animate({'margin-right':0})
        $('#sidenav ul li').addClass 'fadeInUp2'
    else
        $sidenav.animate({'margin-left':0}, {complete:-> $(this).addClass('hidden')})
        $('#sidenav ul li').removeClass 'fadeInUp2'

# close side navigation
$('#sidenav .close a').click (e) ->
    e.preventDefault()
    $sidenav = $('#sidenav')
    $sidenav.animate({'margin-left':0}, {complete:-> $(this).addClass('hidden')})
    $('#sidenav ul li').removeClass 'fadeInUp2'

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


wow = new WOW(
  boxClass: 'wow'
  animateClass: 'animated'
  offset: 0
  mobile: true
  live: true
  callback: (box) ->
    # the callback is fired every time an animation is started
    # the argument that is passed in is the DOM node being animated
    return
  scrollContainer: null)
wow.init()

$('#testimonials').owlCarousel
  navigation: false
  slideSpeed: 300
  paginationSpeed: 400
  pagination: true
  singleItem: true

$('#projects').owlCarousel
  navigation: false
  slideSpeed: 300
  paginationSpeed: 400
  pagination: true
  singleItem: true
  autoHeight: true