###
  find_all(reference)

  Looks up all elemnts that match reference or inherit from it

  like find_all('Musikinstrument') would yield
    'Musikinstrument (Harfe)', 'Musikinstrument (Flöte)', ...
###

find_all = (reference) ->
  if window.mapping?
    return window.mapping[reference]
  else
    console.error? "No i18n loaded"
    return []

