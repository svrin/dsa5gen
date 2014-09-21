###
  Vertrautentiere
###

require ["data/animal/familiar"], (C) ->
  animals.add _.extend C,
    name: __("Wiesel")

require ["data/animal/familiar/uncommon"], (C) ->
  animals.add _.extend C,
    name: __("Biber")

  animals.add _.extend C,
    name: __("Dachs")

  animals.add _.extend C,
    name: __("Fischotter")


