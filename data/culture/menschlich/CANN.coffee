###
  Andergast und Nostria
###

cultures.add [
  name: __("Andergast und Nostria")

  costs: 6

  attributes:
    LeP: 1
    AuP: 2

  vantages:
    auto: []
    recommended: [
      __("Ausdauernd"),
      __("Eisern"),
      __("Hohe Lebenskraft"),
      __("Richtungssinn"),
      __("Schnelle Heilung"),
      __("Zäher Hund"),
      __("Aberglaube"),
      __("Vorurteile")
    ]
    uncommon: [
      -> __("Ausrüstungsvorteil") if !char.vantages[__("adlig")]
      -> __("Besonderer Besitz") if !char.vantages[__("adlig")]
      __("Gebildet")
      __("Krankhafte Reinlichkeit")
      __("Krankheitsanfällig")
    ]
    reduced: [
      __("Waldkundig")
    ]

  skills: [
    [__("Dolche"), 1]
    [__("Hiebwaffen"), 1]
    [__("Raufen"), 1]
    [__("Ringen"), 1]
    [__("Speere"), 1]
    [__("Wurfspeere"), 1]

    [__("Athletik"), 1]
    [__("Schleichen"), 1]
    [__("Selbstbeherschung"), 1]
    [__("Sich Verstecken"), 1]
    [__("Zechen"), 1]

    [__("Fährtensuche"), 1]
    [__("Fallenstellen"), 1]
    [__("Orientierung"), 1]
    [__("Wildnisleben"), 2]

    [__("Götter/Kulte"), 1]
    [__("Sagen/Legenden"), 2]

    [__("Garethi"), -> char.attributes["KL"] - 2]
    distribute(4, __("Oloarkh"), __("Ologhaijan"), __("Thorwalsch"))

    [__("Ackerbau"), 1]
    [__("Heilkunde Wunden"), 1]
    [__("Holzbearbeitung"), 2]
    [__("Lederarbeiten"), 1]
    [__("Schneidern"), 1]
    choice(1, __("Abrichten"), __("Fleischer"), __("Gerber/Kürschner"), __("Grobschmied"), __("Kochen"), __("Zimmermann"))

    __("Meister der Improvisation")
    __("Kulturkunde (Andergast/Nostria)")
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