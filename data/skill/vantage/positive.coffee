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
    name: __("Begabung")
    costs: () ->
      return 10 if this.get('SF') == "A"
      return 20 if this.get('SF') == "B"
      return 30 if this.get('SF') == "C"
    multiple: "Fertigkeiten"

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
      ['GLK', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Gutaussehend")
    costs: 20
    max: 3

  skills.add _.extend {}, S,
    name: __("Gutes Gedächtnis")
    costs: 40

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft (MU)")
    costs: 40
    max: 2
    auto: [
      ['MU_max', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft (KL)")
    costs: 40
    max: 2
    auto: [
      ['KL_max', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft (IN)")
    costs: 40
    max: 2
    auto: [
      ['IN_max', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft (CH)")
    costs: 40
    max: 2
    auto: [
      ['CH_max', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft (FF)")
    costs: 40
    max: 2
    auto: [
      ['FF_max', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft (GE)")
    costs: 40
    max: 2
    auto: [
      ['GE_max', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft (KO)")
    costs: 40
    max: 2
    auto: [
      ['KO_max', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Herausragende Eigenschaft (KK)")
    costs: 40
    max: 2
    auto: [
      ['KK_max', 1]
    ]

  skills.add _.extend {}, S,
    name: __("Herausragende Fertigkeit")
    costs: () ->
      return 5 if this.get('SF') == "A"
      return 10 if this.get('SF') == "B"
      return 15 if this.get('SF') == "C"
    multiple: "Fertigkeiten"

  skills.add _.extend {}, S,
    name: __("Herausragende Kampftechnik")
    costs: () ->
      return 10 if this.get('SF') == "A"
      return 20 if this.get('SF') == "B"
      return 30 if this.get('SF') == "C"
    multiple: "Kampftechniken"

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
      ["AE", 10]
    ]

  skills.add _.extend {}, S,
    name: __("Hohe Karmalkraft")
    costs: 10
    max: 3
    auto: [
      ["KE", 10]
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
    name: __("Meisterhandwerk")
    costs: () ->
      return 10 if this.get('SF') == "A"
      return 20 if this.get('SF') == "B"
      return 30 if this.get('SF') == "C"
    multiple: "Fertigkeiten"

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
    name: __("Waffenbegabung")
    costs: () ->
      return 15 if this.get('SF') == "A"
      return 30 if this.get('SF') == "B"
      return 45 if this.get('SF') == "C"
    multiple: "Kampftechniken"

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
      ['AE', 10]
    ]

  skills.add _.extend {}, S,
    name: __("Zeitgefühl")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Zwergennase")
    costs: 40
    groups: [__("Gabe")]
