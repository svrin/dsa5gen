define "data/skill/magic/ritual", [], () ->
  min: 0
  BE: true

  groups: [
    __("Rituale")
  ]

require ["data/skill/magic/ritual"], (S) ->
  skills.add _.extend {}, S,
    name: __("Arcanovi")
    dices: ["KL", "IN", "FF"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Dschinnenruf")
    dices: ["MU", "IN", "CH"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Elementarer Diener")
    dices: ["MU", "IN", "CH"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Elementarer Meister")
    dices: ["MU", "IN", "CH"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Invocatio Minor")
    dices: ["MU", "CH", "GE"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Invocatio Maior")
    dices: ["MU", "CH", "GE"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Invocatio Maxima")
    dices: ["MU", "CH", "GE"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Zauberklinge Geisterspeer")
    dices: ["KL", "IN", "FF"]
    SF: "C"