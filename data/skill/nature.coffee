define "data/skill/nature", [], () ->
  min: 1

  groups: [
    __("Naturtalente")
    __("Fertigkeiten")
  ]

require ["data/skill/nature"], (S) ->
  skills.add _.extend {}, S,
    name: __("Fährtensuchen")

    dices: ["KL", "IN", "IN"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Fesseln")

    dices: ["KL", "FF", "KK"]

    BE: false
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Fischen & Angeln")

    dices: ["IN", "FF", "KO"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Orientierung")

    dices: ["KL", "IN", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Pflanzenkunde")

    dices: ["KL", "IN", "FF"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Tierkunde")

    dices: ["MU", "KL", "IN"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Wildnisleben")

    dices: ["IN", "GE", "KO"]

    BE: true
    SF: "C"
