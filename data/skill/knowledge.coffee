# @version: US25001
# @page: 201-206

define "data/skill/knowledge", [], () ->
  min: 0

  groups: [
    __("Wissenstalente")
    __("Talente")
  ]

require ["data/skill/knowledge"], (S) ->
  skills.add _.extend {}, S,
    name: __("Brett- & Glücksspiel")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Geographie")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Geschichtswissen")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Götter & Kulte")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Kriegskunst")

    dices: ["MU", "KL", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Magiekunde")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Mechanik")

    dices: ["KL", "KL", "FF"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Rechnen")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Rechtskunde")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Sagen & Legenden")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Sphärenkunde")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Sternkunde")

    dices: ["KL", "KL", "IN"]

    BE: false
    SF: "A"