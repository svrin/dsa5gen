define "data/skill/society", [], () ->
  min: 1

  groups: [
    __("Gesellschaftstalente")
  ]

require ["data/skill/society"], (S) ->
  skills.add _.extend {}, S,
    name: __("Bekehren & Überzeugen")

    dices: ["MU", "IN", "CH"]

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

    BE: "j/n"
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Willenskraft")

    dices: ["MU", "IN", "CH"]

    BE: false
    SF: "C"