###
  Vertrautentiere
###

require ["data/animal/familiar"], (C) ->
  animals.add _.extend C,
    name: __("Spinne")

    attributes:
      AT: 10
      PA: 5
      LE: 5
      INI: 10
      MR: 8
      RS: 0
      GS: 3

    dice: ["1W3", 0, __("Gift")]

require ["data/animal/familiar/uncommon"], (C) ->
  animals.add _.extend C,
    name: __("Höhlenspinne")

  animals.add _.extend C,
    name: __("Maraskantarantel")


