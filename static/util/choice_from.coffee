###
  choice_from(amount, reference)

  let the user choice one element from reference amount many

  like choice_from(1, "Musikinstrument") would elt the user choice one from the category "Musikinstrument"
###
choice_from = (amount, elements) ->
  choice(amount, find_all(elements)...)