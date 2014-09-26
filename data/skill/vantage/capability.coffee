###
  Allgemeine Sonderfertigkeiten
###

define "data/vantage/capability/common", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Sonderfertigkeiten")
    __("Allgemeine Sonderfertigkeiten")
  ]

require ["data/vantage/capability/common"], (S) ->
  skills.add _.extend {}, S,
    name: __("Akklimatisierung (Hitze)")
    alias: [__("Akklimatisierung")]

    costs: 5

    groups: [
      __("Sonderfertigkeiten")
      __("Allgemeine Sonderfertigkeiten")
      __("Akklimatisierung")
    ]

  skills.add _.extend {}, S,
    name: __("Akklimatisierung (Kälte)")
    alias: [__("Akklimatisierung")]

    costs: 5

    groups: [
      __("Sonderfertigkeiten")
      __("Allgemeine Sonderfertigkeiten")
      __("Akklimatisierung")
    ]

  skills.add _.extend {}, S,
    name: __("Berufsgeheimnis")

    costs: 30
    multiple: [__("Fertigkeiten"), __("Berufsgeheimnis")]

  skills.add _.extend {}, S,
    name: __("Fälscher")

    costs: 10
    multiple: __("Handwerkstalente")

  skills.add _.extend {}, S,
    name: __("Geländekunde")

    costs: 30
    multiple: __("Gelände")

  skills.add _.extend {}, S,
    name: __("Kulturkunde")

    costs: 10
    multiple: __("Kultur")

  skills.add _.extend {}, S,
    name: __("Ortskenntnis")

    costs: 20
    multiple: __("Ort")

  skills.add _.extend {}, S,
    name: __("Spezialisierung")
    max: 3

    costs: (dialect) ->
      return 0 if not dialect
      return 10 if dialect.get('SF') == "A"
      return 20 if dialect.get('SF') == "B"
      return 30 if dialect.get('SF') == "C"
    multiple: "Fertigkeiten"


require ["data/vantage/capability/common"], (S) ->
  skills.add _.extend {}, S,
    name: __("Allgemeinwissen")
    costs: 50
  skills.add _.extend {}, S,
    name: __("Anatom")
    costs: 30
    required: [
      [__("Heilkunde Wunden"), 8]
    ]
  skills.add _.extend {}, S,
    name: __("Baumeister")
    costs: 20
    required: [
      [__("Rechnen"), 8]
    ]
  skills.add _.extend {}, S,
    name: __("Chirurg")
    costs: 50
    required: [
      [__("Anatom"), 1]
    ]
  skills.add _.extend {}, S,
    name: __("Dokumentfälscher")
    costs: 20
    required: [
      [__("Schrift"), 3]
    ]
  skills.add _.extend {}, S,
    name: __("Dompteur")
    costs: 30
    required: [
      [__("Tierkunde"), 8]
    ]
  skills.add _.extend {}, S,
    name: __("Entgifter")
    costs: 30
    required: [
      [__("Heilkunde Gift"), 8]
    ]
  skills.add _.extend {}, S,
    name: __("Falschspiel")
    costs: 20
    required: [
      [__("Brett- & Glücksspiel"), 8]
    ]
  skills.add _.extend {}, S,
    name: __("Führungsstärke")
    costs: 20
  skills.add _.extend {}, S,
    name: __("Hauswirtschaft")
    costs: 10
    required: [
      [__("Etikette"), 4]
    ]
  skills.add _.extend {}, S,
    name: __("Lehrer")
    costs: 10
  skills.add _.extend {}, S,
    name: __("Meister der Improvisation")
    costs: 50
  skills.add _.extend {}, S,
    name: __("Prediger")
    costs: 30
    required: [
      [__("Bekehren & Überzeugen"), 8]
    ]
  skills.add _.extend {}, S,
    name: __("Rosstäuscher")
    costs: 30
    required: [
      [__("Tierkunde"), 8]
    ]
  skills.add _.extend {}, S,
    name: __("Schätzen")
    costs: 5
  skills.add _.extend {}, S,
    name: __("Schauspieler")
    costs: 20
  skills.add _.extend {}, S,
    name: __("Seelenheiler")
    costs: 50
    required: [
      [__("Heilkunde Seele"), 8]
    ]
  skills.add _.extend {}, S,
    name: __("Standfest")
    costs: 10
  skills.add _.extend {}, S,
    name: __("Wundheiler")
    costs: 30
