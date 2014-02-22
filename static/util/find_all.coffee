###
  find_all(reference)

  Looks up all elemnts that match reference or inherit from it

  like find_all('Musikinstrument') would yield
    'Musikinstrument (Harfe)', 'Musikinstrument (Flöte)', ...
###

find_all = (reference) ->
  if window.i18n?
    _.every window.i18n, (value, key) ->
      key.startsWith(reference)
  else
    console.log? "No i18n loaded"
    []

