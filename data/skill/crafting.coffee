define "data/skill/crafting", [], () ->
  min: 1

  groups: [
    __("Handwerkstalente")
  ]

require ["data/skill/crafting"], (S) ->
  skills.add _.extend S,
    name: __("Alchimie")

    dices: ["MU", "KL", "FF"]

    BE: false
    SF: "C"

  skills.add _.extend S,
    name: __("Fahrzeuge")

    dices: ["IN", "CH", "FF"]

    BE: false
    SF: "A"

  skills.add _.extend S,
    name: __("Handel")

    dices: ["KL", "IN", "CH"]

    BE: false
    SF: "B"

  skills.add _.extend S,
    name: __("Heilkunde Gift")

    dices: ["MU", "KL", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend S,
    name: __("Heilkunde Krankheiten")

    dices: ["MU", "KL", "IN"]

    BE: false
    SF: "B"

  skills.add _.extend S,
    name: __("Heilkunde Seele")

    dices: ["KL", "IN", "CH"]

    BE: false
    SF: "B"

  skills.add _.extend S,
    name: __("Heilkunde Wunden")

    dices: ["KL", "FF", "FF"]

    BE: false
    SF: "C"

  skills.add _.extend S,
    name: __("Holzbearbeitung")

    dices: ["KL", "FF", "KK"]

    BE: false
    SF: "B"

  skills.add _.extend S,
    name: __("Kochen & Backen")

    dices: ["KL", "IN", "FF"]

    BE: false
    SF: "A"

  skills.add _.extend S,
    name: __("Lederbearbeitung")

    dices: ["KL", "FF", "FF"]

    BE: false
    SF: "B"

  skills.add _.extend S,
    name: __("Malen & Zeichnen")

    dices: ["KL", "IN", "FF"]

    BE: false
    SF: "A"

  skills.add _.extend S,
    name: __("Metallbearbeitung")

    dices: ["KL", "FF", "KK"]

    BE: false
    SF: "C"

  skills.add _.extend S,
    name: __("Musizieren")

    dices: ["IN", "CH", "FF"]

    BE: false
    SF: "A"

  skills.add _.extend S,
    name: __("Schlösserknacken")

    dices: ["IN", "FF", "FF"]

    BE: true
    SF: "C"

  skills.add _.extend S,
    name: __("Seefahrt")

    dices: ["FF", "GE", "KK"]

    BE: false
    SF: "B"

  skills.add _.extend S,
    name: __("Steinbearbeitung")

    dices: ["FF", "FF", "KK"]

    BE: false
    SF: "B"

  skills.add _.extend S,
    name: __("Stoffbearbeitung")

    dices: ["KL", "FF", "FF"]

    BE: false
    SF: "A"

