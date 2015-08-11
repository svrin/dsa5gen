# @version: US25001
# @page: 206-213

define "data/skill/crafting", [], () ->
  min: 0

  groups: [
    __("Handwerkstalente")
    __("Talente")
  ]

require ["data/skill/crafting"], (S) ->
  skills.add _.extend {}, S,
    name: __("Alchimie")

    dices: ["MU", "KL", "FF"]

    BE: false
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Boote & Schiffe")

    dices: ["FF", "GE", "KK"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Fahrzeuge")

    dices: ["CH", "FF", "KO"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Handel")

    dices: ["KL", "IN", "CH"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Heilkunde Gift")

    dices: ["MU", "KL", "IN"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Heilkunde Krankheiten")

    dices: ["MU", "IN", "KO"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Heilkunde Seele")

    dices: ["IN", "CH", "KO"]

    BE: false
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Heilkunde Wunden")

    dices: ["KL", "FF", "FF"]

    BE: true
    SF: "D"

  skills.add _.extend {}, S,
    name: __("Holzbearbeitung")

    dices: ["FF", "GE", "KO"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Lebensmittelbearbeitung")

    dices: ["IN", "FF", "FF"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Lederbearbeitung")

    dices: ["FF", "GE", "KO"]

    BE: true
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Malen & Zeichnen")

    dices: ["IN", "FF", "FF"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Metallbearbeitung")

    dices: ["FF", "KO", "KK"]

    BE: true
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Musizieren")

    dices: ["CH", "FF", "KO"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Schlösserknacken")

    dices: ["IN", "FF", "FF"]

    BE: true
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Steinbearbeitung")

    dices: ["FF", "FF", "KK"]

    BE: true
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Stoffbearbeitung")

    dices: ["KL", "FF", "FF"]

    BE: false
    SF: "A"

