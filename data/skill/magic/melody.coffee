define "data/skill/magic/melody", [], () ->
  min: 0
  max: 1

  groups: [
    __("Elfenlieder")
  ]

require ["data/skill/magic/melody"], (S) ->
  skills.add _.extend {}, S,
    name: __("Erinnerungsmelodie")
    costs: 15
    dices: ["KL", "IN", "IN"]
    based: __("Musizieren")

  skills.add _.extend {}, S,
    name: __("Freundschaftslied")
    costs: 5
    dices: ["IN", "CH", "CH"]
    based: __("Musizieren")

  skills.add _.extend {}, S,
    name: __("Friedenslied")
    costs: 20
    dices: ["MU", "IN", "CH"]
    based: __("Musizieren")

  skills.add _.extend {}, S,
    name: __("Melodie der Kunstfertigkeit")
    costs: 25
    dices: ["IN", "IN", "CH"]
    based: __("Singen")

  skills.add _.extend {}, S,
    name: __("Lied des Trostes")
    costs: 15
    dices: ["MU", "IN", "CH"]
    based: __("Musizieren")

  skills.add _.extend {}, S,
    name: __("Sorgenlied")
    costs: 10
    dices: ["MU", "IN", "IN"]
    based: __("Singen")

  skills.add _.extend {}, S,
    name: __("Zaubermelodie")
    costs: 20
    dices: ["MU", "IN", "CH"]
    based: [__("Musizieren"), __("Singen")]