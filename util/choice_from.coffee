###
  choice_from(amounts, reference)

  let the user choice one element from reference amount many

  like choice_from(1, "Musikinstrument") would let the user choice one from the category "Musikinstrument"
###
choice_from = (name, amounts..., elements) ->
  choice(name, amounts..., find_all(elements)...)