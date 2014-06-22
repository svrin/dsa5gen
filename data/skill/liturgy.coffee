define "data/skill/liturgy", [], () ->
  min: 0
  BE: true

  groups: [
    __("Liturgien")
  ]

require ["data/skill/liturgy"], (S) ->
  skills.add _.extend S,
    name: __("Ehrenhafter Zweikampf")
    dices: ["MU", "MU", "IN"]
    SF: "B"

  skills.add _.extend S,
    name: __("Ermutigung")
    dices: ["MU", "MU", "IN"]
    SF: "A"

  skills.add _.extend S,
    name: __("Giftbann")
    dices: ["MU", "KL", "IN"]
    SF: "B"

  skills.add _.extend S,
    name: __("Göttliches Zeichen")
    dices: ["IN", "IN", "CH"]
    SF: "B"

  skills.add _.extend S,
    name: __("Großer Heilsegen")
    dices: ["IN", "CH", "CH"]
    SF: "C"

  skills.add _.extend S,
    name: __("Heiliger Befehl")
    dices: ["MU", "CH", "CH"]
    SF: "C"

  skills.add _.extend S,
    name: __("Krankheitsbann")
    dices: ["MU", "KL", "IN"]
    SF: "B"

  skills.add _.extend S,
    name: __("Prophezeiung")
    dices: ["MU", "IN", "IN"]
    SF: "A"

  skills.add _.extend S,
    name: __("Sturm")
    dices: ["MU", "IN", "IN"]
    SF: "C"

  skills.add _.extend S,
    name: __("Waffenweihe")
    dices: ["IN", "IN", "CH"]
    SF: "C"

  skills.add _.extend S,
    name: __("Wundbehandlung")
    dices: ["KL", "IN", "CH"]
    SF: "A"