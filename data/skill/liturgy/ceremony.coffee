###
  Zeremonien

  @version: US25001
  @page: 331-333
###

define "data/skill/liturgy/ceremony", [], () ->
  min: 0
  BE: true

  groups: [
    __("Zeremonien")
  ]

require ["data/skill/liturgy"], (S) ->
  skills.add _.extend {}, S,
    name: __("Ackersegen")
    dices: ["MU", "KL", "IN"]
    SF: "B"
    groups: [__("Liturgien"), __("Peraine (Landwirtschaft)")]

  skills.add _.extend {}, S,
    name: __("Exorzismus")
    dices: ["MU", "IN", "CH", "SK"]
    SF: "B"
    groups: [__("Liturgien"), __("Praios (Antimagie)"), __("Boron (Traum)")]

  skills.add _.extend {}, S,
    name: __("Geweihter Panzer")
    dices: ["MU", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Rondra (Sturm)")]

  skills.add _.extend {}, S,
    name: __("Löwengestalt")
    dices: ["MU", "KL", "IN"]
    SF: "B"
    groups: [__("Liturgien"), __("Rondra (Schild)"), __("Rondra (Sturm)")]

  skills.add _.extend {}, S,
    name: __("Nebelleib")
    dices: ["KL", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Phex (Schatten)")]

  skills.add _.extend {}, S,
    name: __("Objektweihe")
    dices: ["KL", "IN", "CH"]
    SF: "C"
    groups: [__("Liturgien"), __("Aspekt (allgemein)")]