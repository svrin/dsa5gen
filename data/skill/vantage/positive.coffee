###
  Vorteile

  @version: US25001
  @page: 163-170
###

define "data/vantage/positive", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Vorteile")
  ]

require ["data/vantage/positive"], (S) ->

  skills.add _.extend {}, S,
    name: __("Adel")
    max: 3
    costs: 5

  skills.add _.extend {}, S,
    name: __("Altersresistenz")
    costs: 5
    restricted: true

  skills.add _.extend {}, S,
    name: __("Angenehmer Geruch")
    costs: 6

  skills.add _.extend {}, S,
    name: __("Begabung")
    costs: (dialect) ->
      return 0 if not dialect
      return 6 if dialect.get('SF') == "A"
      return 12 if dialect.get('SF') == "B"
      return 18 if dialect.get('SF') == "C"
      return 24 if dialect.get('SF') == "D"
    multiple: "Fertigkeiten"

  skills.add _.extend {}, S,
    name: __("Beidhändig")
    costs: 15

  skills.add _.extend {}, S,
    name: __("Dunkelsicht")
    costs: 10
    max: 2
    restricted: true

  skills.add _.extend {}, S,
    name: __("Eisenaffine Aura")
    costs: 15
    required: [
      [__("Zauberer"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Entfernungssinn")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Flink")
    costs: 8

  skills.add _.extend {}, S,
    name: __("Fuchssinn")
    costs: 15

  skills.add _.extend {}, S,
    name: __("Geborener Redner")
    costs: 4

  skills.add _.extend {}, S,
    name: __("Geweihter")
    costs: 25

  skills.add _.extend {}, S,
    name: __("Giftresistenz")
    costs: 10
    max: 2

  skills.add _.extend {}, S,
    name: __("Glück")
    costs: 30
    max: 3
    auto: [
      ['GLK', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Gutaussehend")
    costs: 20
    max: 2

  skills.add _.extend {}, S,
    name: __("Herausragende Fertigkeit")
    costs: (dialect) ->
      return 0 if not dialect
      return 2 if dialect.get('SF') == "A"
      return 4 if dialect.get('SF') == "B"
      return 6 if dialect.get('SF') == "C"
      return 8 if dialect.get('SF') == "D"
    multiple: "Fertigkeiten"

  skills.add _.extend {}, S,
    name: __("Herausragende Kampftechnik")
    costs: (dialect) ->
      return 0 if not dialect
      return 4 if dialect.get('SF') == "A"
      return 8 if dialect.get('SF') == "B"
      return 12 if dialect.get('SF') == "C"
      return 16 if dialect.get('SF') == "D"
    multiple: "Kampftechniken"

  skills.add _.extend {}, S,
    name: __("Herausragender Sinn (Gehör)")
    costs: 12

  skills.add _.extend {}, S,
    name: __("Herausragender Sinn (Sicht)")
    costs: 12

  skills.add _.extend {}, S,
    name: __("Herausragender Sinn (Geruch & Geschmack)")
    costs: 6

  skills.add _.extend {}, S,
    name: __("Herausragender Sinn (Tastsinn)")
    costs: 2

  skills.add _.extend {}, S,
    name: __("Hitzeresistenz")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Hohe Astralkraft")
    costs: 6
    max: 7
    auto: [
      ["AE", 1]
    ]

  skills.add _.extend {}, S,
    name: __("Hohe Karmalkraft")
    costs: 6
    max: 7
    auto: [
      ["KE", 1]
    ]

  skills.add _.extend {}, S,
    name: __("Hohe Lebenskraft")
    costs: 6
    max: 7
    auto: [
      ["LE", 1]
    ]

  skills.add _.extend {}, S,
    name: __("Hohe Seelenkraft")
    costs: 25
    auto: [
      ["SK", 1]
    ]

  skills.add _.extend {}, S,
    name: __("Hohe Zähigkeit")
    costs: 25
    auto: [
      ["SK", 1]
    ]

  skills.add _.extend {}, S,
    name: __("Immunität gegen Gift")
    multiple: "Gift"

  skills.add _.extend {}, S,
    name: __("Immunität gegen Krankheit")
    multiple: "Krankheit"

  skills.add _.extend {}, S,
    name: __("Kälteresistenz")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Krankheitsresistenz")
    costs: 10
    max: 2

  # Magische Einstimmung --> fear

  skills.add _.extend {}, S,
    name: __("Mystiker")
    costs: 20
    required: [
      [__("Geweihter"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Nichtschläfer")
    costs: 8
    restricted: true

  skills.add _.extend {}, S,
    name: __("Pragmatiker")
    costs: 10
    required: [
      [__("Geweihter"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Reich")
    costs: 1
    max: 10

  skills.add _.extend {}, S,
    name: __("Richtungssinn")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Schlangenmensch")
    costs: 6

  skills.add _.extend {}, S,
    name: __("Schwer zu verzaubern")
    costs: 15
    restricted: true

  skills.add _.extend {}, S,
    name: __("Soziale Anpassungsfähigkeit")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Unscheinbar")
    costs: 4

  skills.add _.extend {}, S,
    name: __("Verbesserte Regeneration (Astralenergie)")
    costs: 10
    max: 3

  skills.add _.extend {}, S,
    name: __("Verbesserte Regeneration (Karmalenergie)")
    costs: 10
    max: 3

  skills.add _.extend {}, S,
    name: __("Verbesserte Regeneration (Lebensenergie)")
    costs: 10
    max: 3

  skills.add _.extend {}, S,
    name: __("Verhüllte Aura")
    costs: 20

  skills.add _.extend {}, S,
    name: __("Vertrauenserweckend")
    costs: 25

  skills.add _.extend {}, S,
    name: __("Waffenbegabung")
    costs: (dialect) ->
      return 0 if not dialect
      return 10 if dialect.get('SF') == "B"
      return 20 if dialect.get('SF') == "C"
      return 30 if dialect.get('SF') == "D"
    multiple: "Kampftechniken"

  skills.add _.extend {}, S,
    name: __("Wohlklang")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Zauberer")
    costs: 25
    auto: [
      ['AE', 20]
    ]

  skills.add _.extend {}, S,
    name: __("Zeitgefühl")
    costs: 2

  skills.add _.extend {}, S,
    name: __("Zweistimmiger Gesang")
    costs: 5
    restricted: true

  skills.add _.extend {}, S,
    name: __("Zwergennase")
    costs: 8
