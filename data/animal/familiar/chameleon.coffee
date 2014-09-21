###
  Vertrautentiere
###

require ["data/animal/familiar"], (C) ->
  animals.add _.extend C,
    name: __("Chamäleon")

    attributes:
      AT: 14
      PA: 10
      LE: 3
      INI: 10
      MR: 3
      RS: 0
      GS: 10

    dice: ["", 0]

