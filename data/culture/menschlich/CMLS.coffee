###
  Mittelländische Städte
###

cultures.add [
  name: __("Mittelländische Städte")

  costs: 0

  vantages:
    auto: []
    recommended: [
      __("Ausrüstungsvorteil"),
      __("Besonderer Besitz"),
      __("Soziale Anpassungsfähigkeit"),
      __("Verbindungen"),
      __("Verpflichtungen"),
      __("Vorurteile")
    ]
    uncommon: [
      __("Feenfreund"),
      __("Raumangst")
    ]
    reduced: []

  skills: [
    choice(1, __("Armbrust"), __("Bogen"), __("Wurfmesser"))
    [__("Dolche"), 1]
    [__("Infanteriewaffen"), 1]
    [__("Raufen"), 1]

    [__("Zechen"), 1]

    [__("Etikette"), 1]
    [__("Gassenwissen"), 1]
    [__("Menschenkenntnis"), 1]
    [__("Überreden"), 1]

    [__("Götter/Kulte"), 2]
    [__("Heraldik"), 1]
    [__("Rechnen"), 1]
    [__("Rechtskunde"), 1]
    [__("Sagen/Legenden"), 2]

    [__("Garethi"), -> char.attributes["KL"] - 2]
    choice(3, __("Tulamidya"), __("Rogolan"), __("Thorwalsch"))

    [__("Ackerbau"), 1]

    __("Ortskenntnis (Stadtteil)")
    __("Kulturkunde (Mittelreich)")
  ]


  professions: [
    __("Botenreiter"),
    __("Einbrecher"),
    __("Entdecker"),
    __("Gaukler"),
    __("Jäger"),
    __("Krieger"),
    __("Kundschafter"),
    __("Magier"),
    __("Pirat"),
    __("Ritter"),
    __("Söldner"),
    __("Streuner"),
    __("Wundarzt")
  ]
]




