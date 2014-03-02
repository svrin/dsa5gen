###
  Ambosszwerge
###

cultures.add [
  name: __("Ambosszwerge")

  costs: 0

  vantages:
    auto: [
      [__("Platzangst"), 5]
      [__("Meeresangst"), 5]
    ]
    recommended: [
      __("Ausrüstungsvorteil"),
      __("Besonderer Besitz"),
      __("Arroganz"),
      __("Geiz")
      __("Prinzipientreue"),
      __("Verpflichtungen"),
      __("Vorurteile")
    ]
    uncommon: [
      __("Adlige Abstammung"),
      __("Soziale Anpassungsfähigkeit")
      __("Krankhafte Reinlichkeit")
      __("Speisegebote")
    ]
    reduced: []

  skills: [
    [__("Armbrust"), 3]
    [__("Hiebwaffen"), 1]
    [__("Raufen"), 1]
    [__("Ringen"), 2]
    [__("Zweihandhiebwaffen"), 1]

    [__("Athletik"), 1]
    [__("Klettern"), 1]
    [__("Zechen"), 3]

    [__("Gassenwissen"), -2]

    [__("Wettervorhersage"), -2]

    [__("Gesteinskunde"), 4]
    [__("Götter/Kulte"), 1]
    [__("Mechanik"), 1]
    [__("Rechnen"), 1]
    [__("Sagen/Legenden"), 2]
    [__("Schätzen"), 1]

    [__("Rogolan"), -> this.get('attributes')["KL"] - 2]
    choice((-> this.get('attributes')["KL"] - 4), __("Garethi"), __("Tulamidya"))

    [__("Bergbau"), 2]
    [__("Grobschmied"), 3]

    __("Höhlenkundig")
    __("Kulturkunde (Ambosszwerge)")
    __("Rüstungsgewöhnung I (Kettenhemd)")
  ]


  professions: [
    __("Bote")
    __("Entdecker")
    __("Kundschafter")
    __("Söldner")
    __("Wundarzt")
  ]
]




