###
  Sprachsonderfertigkeiten
###

define "data/vantage/capability/language", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Sprachsonderfertigkeiten")
    __("Sonderfertigkeiten")
  ]

require ["data/vantage/capability/language"], (S) ->

  skills.add _.extend {}, S,
    name: __("Schriftstellerei (Liebesroman)")
    costs: 2

    requirements: [
      ["Betören", 4]
    ]

  skills.add _.extend {}, S,
    name: __("Schriftstellerei (Poesie)")
    costs: 2

    requirements: [
      ["Etikette", 4]
    ]

  skills.add _.extend {}, S,
    name: __("Schriftstellerei (Hetzschriften)")
    costs: 2

    requirements: [
      ["Bekhren & Überzeugen", 4]
    ]

  skills.add _.extend {}, S,
    name: __("Schriftstellerei (Kriminalgeschichten)")
    costs: 2

    requirements: [
      ["Gassenwissen", 4]
    ]

  skills.add _.extend {}, S,
    name: __("Schriftstellerei (Romane)")
    costs: 2

    requirements: [
      ["Überreden", 4]
    ]

  skills.add _.extend {}, S,
    name: __("Schriftstellerei (Märchen)")
    costs: 2

    requirements: [
      ["Sagen & Legenden", 4]
    ]

  skills.add _.extend {}, S,
    name: __("Schriftstellerei (Fachpublikation)")
    costs: 2
    multiple: __("Wissenstalente")