###
  Vorteile
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
    name: __("Adelskind")
    groups: ['Sozialstatus', 'Adlig']

  skills.add _.extend {}, S,
    name: __("Adlig")
    groups: ['Sozialstatus', 'Adlig']

  skills.add _.extend {}, S,
    name: __("Altersresistenz")
    costs: 5
    restricted: true

  skills.add _.extend {}, S,
    name: __("Angenehmer Geruch")
    costs: 20

  skills.add _.extend {}, S,
    name: __("Balance")
    costs: 20

  skills.add _.extend {}, S,
    name: __("Begabung (A)")
    costs: 10
    multiple: "A-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Begabung (B)")
    costs: 20
    multiple: "B-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Begabung (C)")
    costs: 30
    multiple: "C-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Beidhändig")
    costs: 50

  skills.add _.extend {}, S,
    name: __("Dunkelsicht")
    costs: 30
    max: 2
    restricted: true

  skills.add _.extend {}, S,
    name: __("Eisenaffine Aura")
    costs: 35

  skills.add _.extend {}, S,
    name: __("Eisern")
    costs: 20
    max: 3

  skills.add _.extend {}, S,
    name: __("Empathie")
    costs: 60
    groups: [__("Gabe")]

  skills.add _.extend {}, S,
    name: __("Entfernungssinn")
    costs: 15

  skills.add _.extend {}, S,
    name: __("Flexible Eigenschaft")
    costs: 50

  skills.add _.extend {}, S,
    name: __("Flink")
    costs: 20
    max: 3

  skills.add _.extend {}, S,
    name: __("Gefahreninstinkt")
    costs: 60
    groups: [__("Gabe")]

  skills.add _.extend {}, S,
    name: __("Giftresistenz")
    costs: 50

  skills.add _.extend {}, S,
    name: __("Glück")
    costs: 25
    max: 7
    auto: [
      ['EDG', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Gutaussehend")
    costs: 20
    max: 3

  skills.add _.extend {}, S,
    name: __("Gutes Gedächtnis")
    costs: 40

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft")
    costs: 40
    multiple: "Eigenschaft"

  skills.add _.extend {}, S,
    name: __("Herausragende Fertigkeit (A)")
    costs: 5
    multiple: "A-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Herausragende Fertigkeit (B)")
    costs: 10
    multiple: "B-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Herausragende Fertigkeit (C)")
    costs: 15
    multiple: "C-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Herausragende Kampftechnik (A)")
    costs: 10
    multiple: "A-Kampftechnik"

  skills.add _.extend {}, S,
    name: __("Herausragende Kampftechnik (B)")
    costs: 20
    multiple: "B-Kampftechnik"

  skills.add _.extend {}, S,
    name: __("Herausragende Kampftechnik (C)")
    costs: 30
    multiple: "C-Kampftechnik"

  skills.add _.extend {}, S,
    name: __("Herausragender Sinn (Gehör)")
    costs: 30

  skills.add _.extend {}, S,
    name: __("Herausragender Sinn (Sicht)")
    costs: 30

  skills.add _.extend {}, S,
    name: __("Herausragender Sinn (Geruch & Geschmack)")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Herausragender Sinn (Tastsinn)")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Hitzeresistenz")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Hohe Astralkraft")
    costs: 10
    max: 3
    auto: [
      ["AsP", 10]
    ]

  skills.add _.extend {}, S,
    name: __("Hohe Karmalkraft")
    costs: 10
    max: 3
    auto: [
      ["KsP", 10]
    ]

  skills.add _.extend {}, S,
    name: __("Hohe Lebenskraft")
    costs: 10
    max: 3
    auto: [
      ["LE", 10]
    ]

  skills.add _.extend {}, S,
    name: __("Hohe Magieresistenz")
    costs: 10
    max: 3
    auto: [
      ["MR", 1]
    ]

  skills.add _.extend {}, S,
    name: __("Immunität gegen Gift")
    multiple: "Gift"

  skills.add _.extend {}, S,
    name: __("Immunität gegen Krankheit")
    multiple: "Krankheit"

  skills.add _.extend {}, S,
    name: __("Kälteresistenz")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Kampfrausch")
    costs: 30

  skills.add _.extend {}, S,
    name: __("Krankheitsresistenz")
    costs: 30

  skills.add _.extend {}, S,
    name: __("Machtvoller Vertrauter (Großes Exemplar)")
    costs: 30

  skills.add _.extend {}, S,
    name: __("Machtvoller Vertrauter (Ungewöhnliches Vertrautentier)")
    costs: 50

  skills.add _.extend {}, S,
    name: __("Magiegespür")
    costs: 60
    groups: [__("Gabe")]

  skills.add _.extend {}, S,
    name: __("Magische Einstimmung")
    costs: 15
    max: 3

  skills.add _.extend {}, S,
    name: __("Meisterhandwerk (A)")
    costs: 10
    multiple: "A-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Meisterhandwerk (B)")
    costs: 20
    multiple: "B-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Meisterhandwerk (C)")
    costs: 30
    multiple: "C-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Nichtschläfer")
    costs: 5
    restricted: true

  skills.add _.extend {}, S,
    name: __("Oberschicht")
    groups: ['Sozialstatus', 'Oberschicht']

  skills.add _.extend {}, S,
    name: __("Prophezeien")
    costs: 30
    groups: [__("Gabe")]

  skills.add _.extend {}, S,
    name: __("Reich")
    costs: 10
    max: 3

  skills.add _.extend {}, S,
    name: __("Richtungssinn")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Saumagen")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Schlangenmensch")
    costs: 20

  skills.add _.extend {}, S,
    name: __("Schwer zu verzaubern")
    costs: 30

  skills.add _.extend {}, S,
    name: __("Soziale Anpassungsfähigkeit")
    costs: 15

  skills.add _.extend {}, S,
    name: __("Übersinnliches Gespür")
    costs: 20
    groups: [__("Gabe")]

  skills.add _.extend {}, S,
    name: __("Unauffällig")
    costs: 20

  skills.add _.extend {}, S,
    name: __("Unheimlich")
    costs: 15

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
    name: __("Verbundenheit (Dämonen und Elementare)")
    costs: 60

  skills.add _.extend {}, S,
    name: __("Verbundenheit (Tiere)")
    costs: 40

  skills.add _.extend {}, S,
    name: __("Verbundenheit (Andere)")
    costs: 30

  skills.add _.extend {}, S,
    name: __("Verhüllte Aura")
    costs: 20

  skills.add _.extend {}, S,
    name: __("Vertrauenserweckend")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Waffenbegabung (A)")
    costs: 15
    multiple: "A-Kampftechnik"

  skills.add _.extend {}, S,
    name: __("Waffenbegabung (B)")
    costs: 30
    multiple: "B-Kampftechnik"

  skills.add _.extend {}, S,
    name: __("Waffenbegabung (C)")
    costs: 45
    multiple: "C-Kampftechnik"

  skills.add _.extend {}, S,
    name: __("Wohlklang")
    costs: 15

  skills.add _.extend {}, S,
    name: __("Zäher Hund")
    costs: 30

  skills.add _.extend {}, S,
    name: __("Zauberer")
    costs: 30
    max: 5
    auto: [
      ['AsP', 10]
    ]

  skills.add _.extend {}, S,
    name: __("Zeitgefühl")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Zwergennase")
    costs: 40
    groups: [__("Gabe")]
