###
  Mittelländische Städte
###

cultures.add [
  name: __("Südaventurien")

  costs: 4

  vantages:
    auto: [
      __("Hitzeresistenz")
      __("Soziale Anpassungsfähigkeit")
    ]
    recommended: [
      __("Resistenz gegen Gift")
      __("Verbindungen")
      __("Aberglaube")
      __("Arroganz")
      __("Eitelkeit")
      __("Geiz")
      __("Goldgier")
      __("Jähzorn")
      __("Neugier")
      __("Verpflichtungen")
      __("Vorurteile")
    ]
    uncommon: [
      __("Feenfreund")
      __("Kälteresistenz")
      __("Krankheitsanfällig")
      __("Raumangst")
    ]
    reduced: []

  skills: [
    choice(1, __("Armbrust"), __("Bogen"))
    [__("Dolche"), 2]
    [__("Raufen"), 1]
    [__("Ringen"), 1]
    [__("Säbel"), 1]

    [__("Schwimmen"), 1]
    [__("Sich Verstecken"), 1]

    [__("Gassenwissen"), 2]
    [__("Menschenkenntnis"), 1]
    [__("Sich Verkleiden"), 1]
    [__("Überreden"), 1]

    [__("Götter/Kulte"), 1]
    [__("Rechnen"), 1]
    [__("Sagen/Legenden"), 1]
    [__("Schätzen"), 1]

    [__("Garethi (Brabaci)"), -> char.attributes["KL"] - 2]
    [__("Tulamidya"), 4]
    [__("Mohisch"), 4]
    [__("Thorwalsch"), 2]

    [__("Boote Fahren"), 1]
    [__("Holzbearbeitung"), 1]
    [__("Lederarbeiten"), 1]
    [__("Seefahrt"), 1]

    __("Kulturkunde (Südaventurien)")
  ]


  professions: [
    __("Botenreiter"),
    __("Einbrecher"),
    __("Entdecker"),
    __("Gaukler"),
    __("Jäger")
    __("Krieger"),
    __("Kundschafter"),
    __("Magier"),
    __("Pirat"),
    __("Söldner")
    __("Streuner"),
    __("Wundarzt")
  ]
]




