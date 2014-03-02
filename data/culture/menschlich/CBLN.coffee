###
  Bornland
###

cultures.add [
  name: __("Bornland")

  costs: 0

  vantages:
    auto: []
    recommended: [
      __("Ausdauernd")
      __("Eisern")
      __("Hohe Lebenskraft")
      __("Kälteresistenz")
      __("Resistenz gegen Krankheiten")
      __("Richtungssinn")
      __("Schnelle Heilung")
      __("Zäher Hund")
      __("Aberglaube")
      __("Vorurteile")
    ]
    uncommon: [
      ->
        __("Ausrüstungsvorteil") if !this.has(__("adlig"))
      __("Krankhafte Reinlichkeit")
      __("Krankheitsanfällig")
      __("Platzangst")
    ]
    reduced: [
      __("Sumpfkundig"),
      __("Eiskundig")
    ]

  skills: [
    [__("Dolche"), 1]
    [__("Raufen"), 1]
    [__("Wurfmesser"), 1]

    [__("Tanzen"), 1]
    [__("Zechen"), 2]

    [__("Etikette"), 1]
    [__("Menschenkenntnis"), 1]

    [__("Orientierung"), 1]
    [__("Wildnisleben"), 2]

    [__("Götter/Kulte"), 1]
    [__("Sagen/Legenden"), 2]

    [__("Garethi"), -> this.get('attributes')["KL"] - 2]
    choice(6, 2, __("Alaani"), __("Nujuka"))

    [__("Ackerbau"), 1]
    [__("Holzbearbeitung"), 2]
    [__("Kochen"), 1]
    [__("Lederarbeiten"), 1]
    [__("Schneidern"), 1]

    __("Kulturkunde (Bornland)")
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