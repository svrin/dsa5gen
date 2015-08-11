###
  Karmale Sonderfertigkeiten

  @version: US25001
  @page: 321
###

define "data/vantage/capability/liturgy", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Sonderfertigkeiten")
    __("Karmale Sonderfertigkeiten")
  ]

require ["data/vantage/capability/liturgy"], (S) ->
  skills.add _.extend {}, S,
    name: __("Aspektkenntnis I")
    costs: 15
    multiple: __("Aspekt")

  skills.add _.extend {}, S,
    name: __("Aspektkenntnis II")
    costs: 25
    multiple: __("Aspekt")
    required: [
      [__("Aspektkenntnis I"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Aspektkenntnis III")
    costs: 45
    multiple: __("Aspekt")
    required: [
      [__("Aspektkenntnis II"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Fokussierung")
    costs: 8
    required: [
      ["MU", 13]
    ]

  skills.add _.extend {}, S,
    name: __("Stärke des Glaubens")
    costs: 10
    required: [
      ["MU", 15]
    ]

  skills.add _.extend {}, S,
    name: __("Starke Segnungen")
    costs: 2
    required: [
      [__("Geweihter"), 1]
    ]
