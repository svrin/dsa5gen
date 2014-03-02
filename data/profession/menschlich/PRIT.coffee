###
  Ritter / Ritterin
###

professions.add [
  name: __("Ritter")
  name_w: __("Ritterin")

  costs: 20
  zeitaufwendig: 3

  requirements: [
    ["MU", 12]
    ["KO", 12]
    ["KK", 12]
    ->
      8 <= this.get('attributes')["SO"] <= 13
  ]

  attributes:
    LeP: 2
    AuP: 3
    SO: 8

  vantages:
    auto: [
      __("Adlige Abstammung")
      [__("Prinzipientreue (Ritterkodex)"), 10]
      choice(__("Verpflichtungen (Lehnsherr)"), __("Verpflichtungen (Schutzbefohlenen)"))
    ]
    recommended: [
      __("Ausdauernd")
      __("Ausrüstungsvorteil")
      __("Eisern")
      __("Hohe Lebenskraft")
      __("Verbindungen (Adlige)")
      __("Zäher Hund")
      __("Arroganz")
      __("Eitelkeit")
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
    ]
    bb: [
      __("erprobtes Pferd mit Sattel und Zaumzeug")
      __("Lanze")
    ]

  skills: [
    choice(7, 4, __("Anderthalbhänder"), __("Hiebwaffen"), __("Schwerter"), __("Zweihandschwerter/-säbel"))
    choice(3, __("Armbrust"), __("Bogen"), __("Wurfspeere"))
    [__("Dolche"), 3]
    [__("Infanteriewaffen"), 3]
    [__("Lanzenreiten"), 7]
    [__("Raufen"), 1]
    [__("Ringen"), 3]

    [__("Athletik"), 3]
    [__("Körperbeherschung"), 3]
    [__("Reiten"), 7]
    [__("Selbstbeherrschung"), 5]
    [__("Sinnesschärfe"), 2]
    [__("Tanzen"), 2]

    [__("Etikette"), 5]
    [__("Lehren"), 1]
    [__("Menschenkenntnis"), 4]

    [__("Orientierung"), 2]

    [__("Brett-/Kartenspiel"), 1]
    [__("Geschichtswissen"), 2]
    [__("Götter/Kulte"), 2]
    [__("Heraldik"), 5]
    [__("Kriegskunst"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 3]

    choice_from(4, __("Lesen/Schreiben"))

    [__("Abrichten"), 2]
    [__("Heilkunde Wunden"), 2]

    __("Linkhand")
    __("Reiterkampf")
    __("Rüstungsgewöhnung I")
    __("Schildkampf I")
  ]

  equipments: [
    __("hochwertige Kleidung")
    __("Stiefel")
    __("Handschuhe")
    __("Umhang")
    __("Mantel")
    __("Wappenrock")
    choice_from(1, __("Waffe"))
    __("Dolch")
    __("Kettenhemd")
    __("Umhängetasche (Leder)")
    __("Waffenpflegeset")
  ]


]