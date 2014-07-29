define "data/skill/body", [], () ->
  min: 1

  groups: [
    __("Körpertalente")
    __("Fertigkeiten")
  ]

require ["data/skill/body"], (S) ->
  skills.add _.extend {}, S,
    name: __("Fliegen")

    dices: ["MU", "IN", "GE"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Gaukeleien")

    dices: ["MU", "CH", "FF"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Klettern")

    dices: ["MU", "GE", "KK"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Körperbeherrschung")

    dices: ["IN", "GE", "KK"]

    BE: true
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Reiten")

    dices: ["IN", "GE", "KK"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Schwimmen")

    dices: ["GE", "KO", "KK"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Selbstbeherrschung")

    dices: ["MU", "MU", "KO"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Singen")

    dices: ["IN", "CH", "KO"]

    BE: false
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Sinnesschärfe")

    dices: ["KL", "IN", "IN"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Tanzen")

    dices: ["CH", "GE", "GE"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Taschendiebstahl")

    dices: ["MU", "IN", "FF"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Verbergen")

    dices: ["MU", "IN", "GE"]

    BE: true
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Zechen")

    dices: ["IN", "KO", "KK"]

    BE: false
    SF: "A"

