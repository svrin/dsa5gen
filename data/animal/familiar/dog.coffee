###
  Vertrautentiere
###

require ["data/animal/familiar"], (C) ->
  animals.add _.extend C,
    name: __("Hund")

require ["data/animal/familiar/uncommon"], (C) ->
  animals.add _.extend C,
    name: __("Schakal")

  animals.add _.extend C,
    name: __("Wolf")


