###
  Vertrautentiere
###

require ["data/animal/familiar"], (C) ->
  animals.add _.extend C,
    name: __("Kröte")

    attributes:
      AT: 10
      PA: 5
      LE: 7
      INI: 8
      MR: 8
      RS: 0
      GS: 5

    dice: ["", 0, __("Gift")]

require ["data/animal/familiar/uncommon"], (C) ->
  animals.add _.extend C,
    name: __("Schildkröte")

  animals.add _.extend C,
    name: __("Sumpfechse")


