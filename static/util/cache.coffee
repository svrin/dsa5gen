###
  Ensure a new cache is used
###
if @.applicationCache
  context = @.applicationCache

  context.addEventListener 'updateready', () ->
    if context.status == context.UPDATEREADY
      context.swapCache()
  , false