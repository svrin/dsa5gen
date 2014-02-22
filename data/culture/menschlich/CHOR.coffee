###
  Horasreich
###

cultures.add [
  name: __("Horasreich")

  costs: 3

  mods: []

  vantages:
    auto: []
    recommended: [
      __("Ausrüstungsvorteil")
      __("Besonderer Besitz")
      __("Soziale Anpassungsfähigkeit")
      __("Verbindungen")
      __("Arroganz")
      __("Eitelkeit")
      __("Jähzorn")
      __("Rachsucht")
      __("Verpflichtungen")
      __("Vorurteile")
    ]
    uncommon: [
      __("Feenfreund"),
      __("Koboldfreund"),
      __("Raumangst")
    ]
    reduced: [
      __("Nandusgefälliges Wissen")
    ]

  skills: [
    [__("Armbrust"), 1]
    [__("Dolche"), 1]
    [__("Fechtwaffen"), 1]
    [__("Infanteriewaffen"), 1]
    [__("Raufen"), 1]

    [__("Schwimmen"), 1]
    [__("Tanzen"), 1]

    [__("Betören"), 1]
    [__("Etikette"), 2]
    [__("Gassenwissen"), 2]
    [__("Menschenkenntnis") , 2]
    [__("Überreden"), 1]

    [__("Geschichtswissen"), 1]
    [__("Götter/Kulte"), 2]
    [__("Mechanik"), 1]
    [__("Rechnen"), 2]
    [__("Rechtskunde"), 1]
    [__("Sagen/Legenden"), 2]

    [__("Garethi (Horathi)"), -> char.attributes["KL"] - 2]
    choice(5, __("Tulamidya"), __("Rogolan"))
    [__("Kusliker Zeichen"), 2]

    [__("Ackerbau"), 1]

    __("Kulturkunde (Horasreich)")
  ]


  professions: [
    __("Botenreiter"),
    __("Einbrecher"),
    __("Entdecker"),
    __("Gaukler"),
    __("Jäger"),
    __("Krieger"),
    __("Magier"),
    __("Pirat"),
    __("Söldner"),
    __("Streuner"),
    __("Wundarzt")
  ]
]