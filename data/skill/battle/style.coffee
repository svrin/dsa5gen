define "data/skill/battle/style", [], () ->
  min: 0
  max: 1
  count: "roman"


  groups: [
    __("Kampfstile")
  ]

require ["data/skill/battle/style"], (S) ->
  skills.add _.extend {}, S,
    name: __("Blutgruben-Stil")
    costs: 20

    requirements: [
      [__("Raufen"), 6]
    ]

  skills.add _.extend {}, S,
    name: __("Gassen-Stil")
    costs: 20

    requirements: [
      [__("Raufen"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Hammerfaust")
    costs: 25

    requirements: [
      [__("Raufen"), 6]
    ]

  skills.add _.extend {}, S,
    name: __("Hruruzat")
    costs: 30

    requirements: [
      [__("Raufen"), 8]
    ]

  skills.add _.extend {}, S,
    name: __("Mercenario")
    costs: 15

    requirements: [
      [__("Raufen"), 8]
    ]

  skills.add _.extend {}, S,
    name: __("Unauer Schule")
    costs: 15

    requirements: [
      [__("Raufen"), 8]
    ]

  skills.add _.extend {}, S,
    name: __("Zyklopäisches Ringen")
    costs: 20

    requirements: [
      [__("Raufen"), 8]
    ]