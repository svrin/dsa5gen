###
  Söldner / Söldnerin
###

professions.add [
  name: __("Söldner")
  name_w: __("Söldnerin")

  costs: 10

  requirements: [
    ["MU", 12]
    ["GE", 12]
    ["KO", 12]
    ["KK", 11]
    ->
      2 <= char.attributes["SO"] <= 10
  ]

  attributes:
    LeP: 1
    AuP: 2
    SO: 2

  vantages:
    auto: []
    recommended: [
      __("Ausdauernd")
      __("Eisern")
      __("Gefahreninstinkt")
      __("Kampfrausch")
      __("Hohe Lebenskraft")
      __("Richtungssinn")
      __("Schnelle Heilung")
      __("Soziale Anpassungsfähigkeit")
      __("Zäher Hund")
      __("Aberglaube")
      __("Gesucht")
      __("Goldgier")
      __("Vorurteile")
    ]
    uncommon: [
      __("Blutrausch")
      __("Einhändig")
      __("Soziale Anpassungsfähigkeit")
      __("Fettleibig")
      __("Glasknochen")
      __("Schlechte Regeneration")
    ]
    reduced: [
      __("Rüstungsgewöhnung II")
      __("Schildkampf II")
    ]
    bb: [
      choice(__("erprobtes Pferd mit Sattel und Zaumzeug"),
        [__("Packpferd mit Packsattel"), __("Zelt"), __("Kochgeschirr")])
    ]

  skills: [
    choice(5, 3, __("Anderthalbhänder"), __("Hiebwaffen"), __("Kettenwaffen"), __("Säbel"), __("Schwerter"),
      __("Speere"))
    choice(2, __("Armbrust"), __("Bogen"), __("Wurfspeere"), __("Wurfbeil"), __("Wurfmesser"))
    [__("Dolche"), 3]
    [__("Infanteriewaffen"), 3]
    [__("Raufen"), 3]
    [__("Ringen"), 3]

    [__("Athletik"), 2]
    [__("Klettern"), 1]
    [__("Körperbeherschung"), 2]
    [__("Schleichen"), 2]
    [__("Selbstbeherrschung"), 1]
    [__("Sich Verstecken"), 1]
    [__("Zechen"), 3]

    [__("Gassenwissen"), 1]
    [__("Menschenkenntnis"), 2]

    [__("Fährtensuche"), 2]
    [__("Fallenstellen"), 2]
    [__("Fesseln/Entfesseln"), 1]
    [__("Fischen/Angeln"), 1]
    [__("Orientierung"), 1]
    [__("Wettervorhersage"), 1]
    [__("Wildnisleben"), 2]

    [__("Heraldik"), 1]
    [__("Kriegskunst"), 3]
    [__("Rechtskunde"), 1]
    [__("Schätzen"), 2]
    [__("Tierkunde"), 2]

    choice_from(4, __("Sprache kennen"))

    [__("Heilkunde Wunden"), 2]
    [__("Holzbearbeitung"), 3]
    [__("Kochen"), 1]
    [__("Lederarbeiten"), 2]
    [__("Schneidern"), 2]

    __("Linkhand")
    __("Rüstungsgewöhnung I")
    __("Schildkampf I")
  ]

  equipments: [
    __("Rüstung und Helm")
    choice_from(1, __("Waffe"))
    __("Dolch")
    __("Holzschild (einfach)")
    [__("Silbertaler"), 3]
    __("robuste, auffällige Kleidung")
    choice(1, __("Mantel"), __("Umhang"))
    choice(1, __("Hut"), __("Barrett"))
    __("Essbesteck")
    __("Essnapf")
    __("Tuchbeutel")
    __("Brotbeutel")
    __("Würfel")
    __("Schnapsflasche")
    __("Arbeitsmesser")
    choice(1, __("Feldflasche"), __("Wasserschlauch"))
    choice(1, __("Schlafsack"), [__("Decke"), __("Decke")])
  ]


]