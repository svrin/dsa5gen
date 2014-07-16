define "data/skill/magic/charm", [], () ->
  min: 0
  SF: "B"

  groups: [
    __("Stabzauber")
  ]

require ["data/skill/magic/charm"], (S) ->
  skills.add _.extend {}, S,
    name: __("Apport")
    costs: 25
    dices: ["MU", "IN", "CH"]

  skills.add _.extend {}, S,
    name: __("Doppeltes Maß")
    costs: 10
    dices: ["IN", "IN", "CH"]

  skills.add _.extend {}, S,
    name: __("Ewige Flamme")
    costs: 10
    dices: ["MU", "IN", "CH"]

  skills.add _.extend {}, S,
    name: __("Flammenschwert")
    costs: 35
    dices: ["MU", "MU", "CH"]

  skills.add _.extend {}, S,
    name: __("Schuppenhaut")
    costs: 30
    dices: ["IN", "IN", "CH"]

  skills.add _.extend {}, S,
    name: __("Seil des Adepten")
    costs: 20
    dices: ["IN", "IN", "CH"]


  skills.add _.extend {}, S,
    name: __("Bindung des Stabes")
    costs: 15
    max: 1

  skills.add _.extend {}, S,
    name: __("Kraftfokus")
    costs: 25
    max: 1

  skills.add _.extend {}, S,
    name: __("Merkmalsfokus")
    costs: 25
    max: 1
    multiple: __("Merkmal")

    requirements: [
      [__("Kraftfokus"), 1]
    ]
