###
  Vertrautentiere
###

require ["data/animal/familiar"], (C) ->
  animals.add _.extend C,
    name: __("Katze")

    attributes:
      AT: 13
      PA: 10
      LE: 10
      INI: 15
      MR: 5
      RS: 0
      GS: 14

      MU: 7
      KL: 5
      IN: 7
      CH: 9
      FF: 4
      GE: 14
      KO: 7
      KK: 3

    auto: [
      __("Dunkelsicht")
    ]

    dice: ["1W3", 0]

  animals.add _.extend C,
    name: __("Wildkatze")

require ["data/animal/familiar/uncommon"], (C) ->
  animals.add _.extend C,
    name: __("Gepard")

  animals.add _.extend C,
    name: __("Panther")

  animals.add _.extend C,
    name: __("Jaguar")

  animals.add _.extend C,
    name: __("Luchs")


