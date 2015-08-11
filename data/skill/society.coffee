# @version: US25001
# @page: 194-198

define "data/skill/society", [], () ->
  min: 0

  groups: [
    __("Gesellschaftstalente")
    __("Talente")
  ]

require ["data/skill/society"], (S) ->
  skills.add _.extend {}, S,
    name: __("Bekehren & Überzeugen")

    dices: ["MU", "KL", "CH"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Betören")

    dices: ["MU", "CH", "CH"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Einschüchtern")

    dices: ["MU", "IN", "CH"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Etikette")

    dices: ["KL", "IN", "CH"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Gassenwissen")

    dices: ["KL", "IN", "CH"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Menschenkenntnis")

    dices: ["KL", "IN", "CH"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Überreden")

    dices: ["MU", "IN", "CH"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Verkleiden")

    dices: ["IN", "CH", "GE"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Willenskraft")

    dices: ["MU", "IN", "CH"]

    BE: false
    SF: "C"
