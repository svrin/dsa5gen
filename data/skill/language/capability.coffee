###
  Sprachsonderfertigkeiten
###

define "data/vantage/capability/language", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Sonderfertigkeiten")
    __("Sprachsonderfertigkeiten")
  ]

require ["data/vantage/capability/language"], (S) ->
  skills.add _.extend {}, S,
    name: __("Fächersprache")
    costs: 5
  skills.add _.extend {}, S,
    name: __("Füchsisch")
    costs: 5
  skills.add _.extend {}, S,
    name: __("Kryptographie")
    costs: 10
  skills.add _.extend {}, S,
    name: __("Lippenlesen")
    costs: 20
  skills.add _.extend {}, S,
    name: __("Poesie")
    costs: 10