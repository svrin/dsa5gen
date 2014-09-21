###
  Vertrautentiere
###

require ["data/animal/familiar"], (C) ->
  animals.add _.extend C,
    name: __("Speikobra")

    attributes:
      AT: 10
      PA: 5
      LE: 7
      INI: 5
      MR: 5
      RS: 0
      GS: 3

    dice: ["1W3", 0, __("Gift")]

require ["data/animal/familiar/uncommon"], (C) ->
  animals.add _.extend C,
    name: __("Würgeschlange")

  animals.add _.extend C,
    name: __("Giftschlange")


