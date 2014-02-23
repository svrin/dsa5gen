###
  Thorwal
###

cultures.add [
  name: __("Thorwal")

  costs: 4

  mods:
    AuP: 2

  vantages:
    auto: [
      [__("Aberglaube"), 5]
    ]
    recommended: [
      __("Ausdauernd"),
      __("Balance")
      __("Eisern"),
      __("Glück")
      __("Innerer Kompass")
      __("Kampfrausch")
      __("Hohe Lebenskraft")
      __("Richtungssinn"),
      __("Schnelle Heilung"),
      __("Zäher Hund")
      __("Blutrausch")
      __("Neugier"),
      __("Rachsucht"),
      __("Raumangst")
      __("Totenangst")
      __("Vorurteile")
    ]
    uncommon: [
      __("Adlige Abstammung")
      __("Soziale Anpassungsfähigkeit")
      __("Krankhafte Reinlichkeit")
      __("Meeresangst")
      __("Platzangst")
    ]
    reduced: [
      __("Meereskundig")
      __("Waffenloser Kampfstil (Hammerfaust)")
    ]

  skills: [
    [__("Hiebwaffen"), 1]
    [__("Raufen"), 2]
    [__("Wurfbeile"), 2]

    [__("Athletik"), 1]
    [__("Körperbeherschung"), 1]
    [__("Schwimmen"), 3]
    [__("Zechen"), 3]

    [__("Fesseln/Entfesseln"), 1]
    [__("Fischen/Angeln"), 3]
    [__("Orientierung"), 3]

    [__("Götter/Kulte"), 1]
    [__("Sagen/Legenden"), 4]
    [__("Sternkunde"), 1]

    [__("Thorwalsch"), -> char.attributes["KL"] - 2]
    [__("Garethi"), -> char.attributes["KL"] - 4]

    [__("Boote fahren"), 2]
    [__("Holzbearbeitung"), 1]
    [__("Seefahrt"), 2]

    __("Kulturkunde (Thorwal)")
  ]


  professions: [
    __("Botenreiter"),
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