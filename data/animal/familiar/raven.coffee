###
  Vertrautentiere
###

require ["data/animal/familiar"], (C) ->
  animals.add _.extend C,
    name: __("Rabe")

    attributes:
      AT: 14
      PA: 8
      LE: 7
      INI: 14
      MR: 6
      RS: 0
      GS: 12

    dice: ["1W3", 0]

  animals.add _.extend C,
    name: __("Eule")

  animals.add _.extend C,
    name: __("Elster")

require ["data/animal/familiar/uncommon"], (C) ->
  animals.add _.extend C,
    name: __("Adler")

  animals.add _.extend C,
    name: __("Falke")


