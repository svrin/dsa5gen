###
  Tulamidische Stadtstaaten
###

cultures.add [
  name: __("Tulamidische Stadtstaaten")

  costs: 3

  attributes:
    MR: 1

  vantages:
    auto: []
    recommended: [
      __("Ausrüstungsvorteil"),
      __("Besonderer Besitz"),
      __("Glück"),
      __("Glück im Spiel"),
      __("Hitzeresistenz"),
      __("Soziale Anpassungsfähigkeit"),
      __("Verbindungen"),
      __("Aberglaube"),
      __("Eitelkeit")
      __("Goldgier")
      __("Jähzorn")
      __("Neugier")
      __("Speisegebote")
      __("Verpflichtungen"),
      __("Vorurteile")
    ]
    uncommon: [
      __("Adlige Abstammung"),
      __("Feenfreund"),
      __("Koboldfreund"),
      __("Kälteresistenz")
      __("Raumangst")
    ]
    reduced: []

  skills: [
    [__("Dolche"), 2]
    [__("Raufen"), 1]
    [__("Ringen"), 2]
    [__("Säbel"), 1]

    [__("Schleichen"), 1]
    [__("Sich Verstecken"), 1]
    [__("Tanzen"), 1]
    choice(1, __("Taschendiebstahl"), __("Gaukeleien"))

    [__("Etikette"), 1]
    [__("Gassenwissen"), 1]
    [__("Menschenkenntnis"), 2]
    [__("Sich Verkleiden"), 1]
    [__("Überreden"), 1]

    [__("Brett-/Kartenspiel"), 2]
    [__("Geschichtswissen"), 1]
    [__("Götter/Kulte"), 1]
    [__("Rechnen"), 1]
    [__("Rechtskunde"), 1]
    [__("Sagen/Legenden"), 2]
    [__("Schätzen"), 2]

    [__("Tulamidya"), -> char.attributes["KL"] - 2]
    [__("Garethi"), -> char.attributes["KL"] - 4]

    __("Kulturkunde (Tulamiden)")
  ]


  professions: [
    __("Botenreiter"),
    __("Einbrecher"),
    __("Entdecker"),
    __("Gaukler"),
    __("Krieger"),
    __("Magier"),
    __("Pirat"),
    __("Söldner")
    __("Streuner"),
    __("Wundarzt")
  ]
]




