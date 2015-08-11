# @version: US25001
# @page: 188-193

define "data/skill/body", [], () ->
  min: 0

  groups: [
    __("Körpertalente")
    __("Talente")
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

    dices: ["GE", "GE", "KO"]

    BE: true
    SF: "D"

  skills.add _.extend {}, S,
    name: __("Kraftakt")

    dices: ["KO", "KK", "KK"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Reiten")

    dices: ["CH", "GE", "KK"]

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
    SF: "D"

  skills.add _.extend {}, S,
    name: __("Singen")

    dices: ["KL", "CH", "KO"]

    BE: false
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Sinnesschärfe")

    dices: ["KL", "IN", "IN"]

    BE: false
    SF: "D"

  skills.add _.extend {}, S,
    name: __("Tanzen")

    dices: ["KL", "CH", "GE"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Taschendiebstahl")

    dices: ["MU", "FF", "GE"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Verbergen")

    dices: ["MU", "IN", "GE"]

    BE: true
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Zechen")

    dices: ["KL", "KO", "KK"]

    BE: false
    SF: "A"

