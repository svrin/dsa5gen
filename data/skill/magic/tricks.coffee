skills.add
  name: __("Zaubertricks")
  min: 0

  dices: ["MU", "IN", "CH"]

  BE: false
  SF: "A"

  groups: [
    __("Gaben")
  ]

define "data/skill/magic/tricks", [], () ->
  min: 0
  max: 1
  costs: 5
  based: __("Zaubertricks")

  groups: [
    __("Zaubertricks")
  ]

require ["data/skill/magic/tricks"], (S) ->
  skills.add _.extend {}, S,
    name: __("Abkühlung")
  skills.add _.extend {}, S,
    name: __("Abwasch")
  skills.add _.extend {}, S,
    name: __("Bauchreden")
  skills.add _.extend {}, S,
    name: __("Bezauberndes Lächeln")
  skills.add _.extend {}, S,
    name: __("Duft")
  skills.add _.extend {}, S,
    name: __("Feuerfinger")
  skills.add _.extend {}, S,
    name: __("Glücksgriff")
  skills.add _.extend {}, S,
    name: __("Handwärmer")
  skills.add _.extend {}, S,
    name: __("Kehrbesen")
  skills.add _.extend {}, S,
    name: __("Lockruf")
  skills.add _.extend {}, S,
    name: __("Regenbogenaugen")
  skills.add _.extend {}, S,
    name: __("Schlangenhände")
  skills.add _.extend {}, S,
    name: __("Schnipsen")
  skills.add _.extend {}, S,
    name: __("Schreibfeder")
  skills.add _.extend {}, S,
    name: __("Seite für Seite")
  skills.add _.extend {}, S,
    name: __("Signatur")
  skills.add _.extend {}, S,
    name: __("Teetässchen")
  skills.add _.extend {}, S,
    name: __("Trocken")