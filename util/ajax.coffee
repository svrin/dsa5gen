###
  Init NProgress and take care of ajax calls
###

$(document).ajaxStart ->
  NProgress.start()
$(document).ajaxStop ->
  NProgress.done()