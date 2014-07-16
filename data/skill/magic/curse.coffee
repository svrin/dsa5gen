define "data/skill/magic/curse", [], () ->
  min: 0
  SF: "B"

  groups: [
    __("Hexenflüche")
  ]

require ["data/skill/magic/curse"], (S) ->
  skills.add _.extend {}, S,
    name: __("Beiß auf Granit")
    costs: 15
    dices: ["KL", "IN", "FF"]

  skills.add _.extend {}, S,
    name: __("Beute!")
    costs: 10
    dices: ["KL", "IN", "CH"]

  skills.add _.extend {}, S,
    name: __("Hagelschlag")
    costs: 15
    dices: ["MU", "IN", "CH"]

  skills.add _.extend {}, S,
    name: __("Hexenschuss")
    costs: 10
    dices: ["IN", "FF", "KO"]

  skills.add _.extend {}, S,
    name: __("Pech an den Hals wünschen")
    costs: 5
    dices: ["KL", "IN", "CH"]

  skills.add _.extend {}, S,
    name: __("Pestilenz")
    costs: 15
    dices: ["MU", "CH", "GE"]

  skills.add _.extend {}, S,
    name: __("Schlaf rauben")
    costs: 20
    dices: ["KL", "IN", "CH"]

  skills.add _.extend {}, S,
    name: __("Unfruchtbarkeit")
    costs: 10
    dices: ["IN", "FF", "KO"]

  skills.add _.extend {}, S,
    name: __("Warzen sprießen")
    costs: 5
    dices: ["IN", "FF", "KO"]

  skills.add _.extend {}, S,
    name: __("Zunge lähmen")
    costs: 15
    dices: ["KL", "IN", "CH"]
