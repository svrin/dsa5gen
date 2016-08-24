###
  Nachteile

  @version: US25001
  @page: 170-179
###

define "data/vantage/negative", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Nachteile")
  ]

require ["data/vantage/negative"], (S) ->
# Angst vor --> fear
  skills.add _.extend {}, S,
    name: __("Arm")
    max: 3
    costs: -1

  skills.add _.extend {}, S,
    name: __("Artefaktgebunden")
    costs: -10
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Behäbig")
    costs: -3

  skills.add _.extend {}, S,
    name: __("Blind")
    costs: -50

  skills.add _.extend {}, S,
    name: __("Blutrausch")
    costs: -10
    required: [
      [__("Jähzorn"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Eingeschränkter Sinn (Gehör)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Eingeschränkter Sinn (Sicht)")
    costs: -15

  skills.add _.extend {}, S,
    name: __("Eingeschränkter Sinn (Geruch & Geschmack)")
    costs: -6

  skills.add _.extend {}, S,
    name: __("Eingeschränkter Sinn (Tastsinn)")
    costs: -2

  skills.add _.extend {}, S,
    name: __("Farbenblind")
    costs: -2

  skills.add _.extend {}, S,
    name: __("Fettleibig")
    costs: -25
    required: [
      [__("Behäbig"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Giftanfällig")
    costs: -5
    max: 2

  skills.add _.extend {}, S,
    name: __("Hässlich")
    costs: -10
    max: 2

  skills.add _.extend {}, S,
    name: __("Hitzeempfindlichkeit")
    costs: -3

  skills.add _.extend {}, S,
    name: __("Kälteempfindlich")
    costs: -3

  skills.add _.extend {}, S,
    name: __("Kein Flugsalbe")
    costs: -25
# TODO: * Tradition (Hexe) -10 AP
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Kein Vertrauter")
    costs: -25
# TODO:  * Tradition (Hexe) -10 AP
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Körpergebundene Kraft")
    costs: -5
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Körperliche Auffälligkeit")
    costs: -2

  skills.add _.extend {}, S,
    name: __("Krankheitsanfällig")
    costs: -5
    max: 2

  skills.add _.extend {}, S,
    name: __("Lästige Mindergeister")
    costs: -20
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Lichtempfindlich")
    costs: -20

  # Magische Einschränkung --> habits

  skills.add _.extend {}, S,
    name: __("Nachtblind")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Niedrige Astralkraft")
    costs: -2
    max: 7
    auto: [
      ["AE", -1]
    ]
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Niedrige Karmalkraft")
    costs: -2
    max: 7
    auto: [
      ["KE", -1]
    ]
    required: [
      [__("Geweihter"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Niedrige Lebenskraft")
    costs: -4
    max: 7
    auto: [
      ["LE", -1]
    ]

  skills.add _.extend {}, S,
    name: __("Niedrige Seelenkraft")
    costs: -25
    auto: [
      ["SK", -1]
    ]

  skills.add _.extend {}, S,
    name: __("Niedrige Zähigkeit")
    costs: -25
    auto: [
      ["ZK", -1]
    ]

  skills.add _.extend {}, S,
    name: __("Pech")
    costs: -20
    max: 3
    auto: [
      ["GLK", -1]
    ]

  skills.add _.extend {}, S,
    name: __("Pechmagnet")
    costs: -5

  # Persöhnlichkeitsschwächen --> habits

  skills.add _.extend {}, S,
    name: __("Prinzipientreue")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Schlafwandler")
    costs: -10

  # Schlechte Angewohnheit -> habits

  # Schlechte Eigenschaft -> habits

  skills.add _.extend {}, S,
    name: __("Schlechte Regeneration (Astralenergie)")
    costs: -10
    max: 3
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Schlechte Regeneration (Karmaenergie)")
    costs: -10
    max: 3
    required: [
      [__("Geweihter"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Schlechte Regeneration (Lebensenergie)")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Schwacher Astralkörper")
    costs: -15
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Schwacher Karmalkörper")
    costs: -15
    required: [
      [__("Geweihter"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Sensibler Geruchssinn")
    costs: -10
    restricted: true

  skills.add _.extend {}, S,
    name: __("Sprachfehler")
    costs: -15

  skills.add _.extend {}, S,
    name: __("Stigma (Albino)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Stigma (Grüne Haare)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Stigma (Brandmale)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Stigma (Katzenhafte Augen)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Stigma (Schlangenschuppen)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Stumm")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Taub")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Unfähig")
    costs: (current, dialect) ->
      return 0 if not dialect
      return -1 if dialect.get('SF') == "A"
      return -2 if dialect.get('SF') == "B"
      return -3 if dialect.get('SF') == "C"
      return -4 if dialect.get('SF') == "D"
    multiple: "Fertigkeiten"

  skills.add _.extend {}, S,
    name: __("Unfrei")
    costs: -8

  skills.add _.extend {}, S,
    name: __("Verpflichtungen")
    costs: -5
    max: 3

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einäugig)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einohrig)")
    costs: -5

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einhändig)")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einarmig)")
    costs: -30

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einbeinig)")
    costs: -30

  skills.add _.extend {}, S,
    name: __("Wahrer Name")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Wilde Magie")
    costs: -10
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Zauberanfällig")
    costs: -12
    max: 2

  skills.add _.extend {}, S,
    name: __("Zerbrechlich")
    costs: -20
