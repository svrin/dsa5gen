# @version: US25001
# @page: 198-201

define "data/skill/nature", [], () ->
  min: 0

  groups: [
    __("Naturtalente")
    __("Talente")
  ]

require ["data/skill/nature"], (S) ->
  skills.add _.extend {}, S,
    name: __("Fährtensuchen")

    dices: ["MU", "IN", "GE"]

    BE: true
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

    dices: ["KL", "FF", "KO"]

    BE: "j/n"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Tierkunde")

    dices: ["MU", "MU", "CH"]

    BE: true
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Wildnisleben")

    dices: ["MU", "GE", "KO"]

    BE: true
    SF: "C"
