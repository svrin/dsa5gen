###
  Allgemeine Sonderfertigkeiten

  @version: US25001
  @page: 214ff
###

define "data/vantage/capability/common", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Allgemeine Sonderfertigkeiten")
    __("Sonderfertigkeiten")
  ]

require ["data/vantage/capability/common"], (S) ->
  skills.add _.extend {}, S,
    name: __("Anführer")
    costs: 10

    requirements: [
      [__("Kriegskunst"), 4]
    ]

  # Berufsgeheimnis --> knowledge

  skills.add _.extend {}, S,
    name: __("Dokumentfälscher")
    costs: 5

    requirements: [
      [__("Malen & Zeichnen"), 8]
    ]

  skills.add _.extend {}, S,
    name: __("Eisener Wille")
    costs: 15
    max: 3

  skills.add _.extend {}, S,
    name: __("Fächersprache")
    costs: 3

    requirements: [
      [__("Etikette"), 8]
    ]

  skills.add _.extend {}, S,
    name: __("Fallen entschärfen")
    costs: 5

    requirements: [
      [__("Mechanik"), 4]
      [__("Schlösserknacken"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Falschspielen")
    costs: 5

    requirements: [
      [__("Brett- & Glücksspiel"), 8]
    ]

  skills.add _.extend {}, S,
    name: __("Fertigkeitsspezialisierung")
    max: 3

    costs: (current, dialect) ->
      return 0 if not dialect
      return 1 * current if dialect.get('SF') == "A"
      return 2 * current if dialect.get('SF') == "B"
      return 3 * current if dialect.get('SF') == "C"
      return 4 * current if dialect.get('SF') == "D"

    multiple: __("Talente")

  skills.add _.extend {}, S,
    name: __("Fischer")
    costs: 3

    requirements: [
      [__("Fischen & Angeln"), 4]
      [__("Verbergen"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Füchsisch")
    costs: 3

    requirements: [
      [__("Gassenwissen"), 8]
    ]

  skills.add _.extend {}, S,
    name: __("Geländekunde")

    costs: 15
    multiple: __("Gelände")

  skills.add _.extend {}, S,
    name: __("Gildenrecht")
    costs: 2

    requirements: [
      [__("Rechtskunde"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Glasbläserei")
    costs: 2

    requirements: [
      [__("Steinbearbeitung"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Hehlerei")
    costs: 5

    requirements: [
      [__("Gassenwissen"), 8]
      [__("Handel"), 4]
      [__("Ortskenntnis"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Instrumente bauen")
    costs: 2

    requirements: [
      [__("Holzbearbeitung"), 12]
      [__("Metallbearbeitung"), 12]
    ]

  skills.add _.extend {}, S,
    name: __("Jäger")
    costs: 5

    requirements: [
      ["FK", 10]
      [__("Fährtensuche"), 4]
      [__("Tierkunde"), 4]
      [__("Verbergen"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Kartographie")
    costs: 5

    requirements: [
      [__("Geographie"), 8]
      [__("Rechnen"), 4]
      [__("Malen & Zeichnen"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Lippenlesen")
    costs: 10

    requirements: [
      [__("Sinnesschärfe"), 4]
      [__("Blind"), -1]
    ]

  skills.add _.extend {}, S,
    name: __("Meister der Improvisation")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Ortskenntnis")
    costs: 2
    multiple: __("Ort")

  skills.add _.extend {}, S,
    name: __("Rosstäuscher")
    costs: 4

    requirements: [
      [__("Handel"), 4]
      [__("Tierkunde"), 8]
    ]

  skills.add _.extend {}, S,
    name: __("Sammler")
    costs: 2

    requirements: [
      [__("Pflanzenkunde"), 4]
      [__("Wildnisleben"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Schmerzen unterdrücken")
    costs: 20

    requirements: [
      [__("Selbstbeherschung"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Schnapsbrennerei")
    costs: 2

    requirements: [
      [__("Alchimie"), 4]
      [__("Lebensmittelbearbeitung"), 4]
    ]

  # Schrift --> language

  # Schriftstellerei --> language

  # Sprache --> language

  skills.add _.extend {}, S,
    name: __("Tierstimmen immitieren")
    costs: 5

    requirements: [
      [__("Tierkunde"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Töpferei")
    costs: 2

    requirements: [
      [__("Steinbearbeitung"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Wettervorhersage")
    costs: 2

    requirements: [
      [__("Wildnisleben"), 4]
    ]

  skills.add _.extend {}, S,
    name: __("Zahlenmystik")
    costs: 2

    requirements: [
      [__("Rechnen"), 8]
      [__("Sagen & Legenden"), 4]
    ]
