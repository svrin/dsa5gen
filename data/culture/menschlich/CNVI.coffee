###
  Novadis
###

cultures.add [
  name: __("Novadis")

  costs: -> if (this.get('gender') == "m" || this.has("Achmad’Sunni")) then 3 else 1

  attributes:
    MU: -> if (this.get('gender') == "m" || this.has("Achmad’Sunni")) then 1 else 0
    AuP: -> if (this.get('gender') == "m" || this.has("Achmad’Sunni")) then 2 else 1

  vantages:
    auto: [
      __("Hitzeresistenz"),
      __("Richtungssinn"),
      [__("Raumangst"), 5]
      [__("Jähzorn"), 5]
      choice(5, __("Arroganz"), __("Rachsucht"))
      __("Speisegebote")
    ]
    recommended: [
      __("Ausdauernd"),
      __("Eisern"),
      -> __("Hohe Lebenskraft") if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
      __("Innerer Kompass"),
      -> __("Schnelle Heilung") if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
      -> __("Schwer zu verzaubern") if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
      __("Zäher Hund"),
      __("Arroganz"),
      __("Jähzorn"),
      __("Meeresangst"),
      __("Prinzipientreue (99 Gesetze)")
      __("Rachsucht"),
      __("Vorurteile")
    ]
    uncommon: [
      __("Adlige Abstammung"),
      __("Feenfreund"),
      __("Koboldfreund"),
      __("Soziale Anpassungsfähigkeit")
      __("Krankheitsanfällig")
      __("Lichtempfindlich"),
      __("Lichtscheu"),
      __("Platzangst")
    ]
    reduced: [
      __("Waffenloser Kampfstil (Unauer Schule)")
    ]

  skills: [
    -> [__("Bogen"), 1] if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    [__("Dolche"), 1]
    -> [__("Lanzenreiten"), 1] if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    -> [__("Raufen"), if (this.get('gender') == "m" || this.has("Achmad’Sunni")) then 1 else 2]
    -> [__("Ringen"), 1] if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    -> [__("Säbel"), 1] if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    -> [__("Speere"), 1] if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    -> [__("Wurfspeere"), 1] if (this.get('gender') == "m" || this.has("Achmad’Sunni"))

    [__("Athletik"), 1]
    [__("Körperbeherschung"), 1]
    -> [__("Reiten"), if (this.get('gender') == "m" || this.has("Achmad’Sunni")) then 3 else 2]
    [__("Schwimmen"), -1]
    -> [__("Selbstbeherschung"), 1] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    -> [__("Sich Verstecken")] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    [__("Sinnesschärfe"), 1]
    -> [__("Tanzen"), if (this.get('gender') == "m" || this.has("Achmad’Sunni")) then 1 else 3]

    [__("Orientierung"), 3]
    [__("Wildnisleben"), 1]

    -> [__("Brett-/Kartenspiel"), if (this.get('gender') == "m" || this.has("Achmad’Sunni")) then 2 else 3]
    [__("Götter/Kulte"), 1]
    [__("Rechnen"), 1]
    [__("Rechtskunde"), 1]
    -> [__("Sagen/Legenden"), if (this.get('gender') == "m" || this.has("Achmad’Sunni")) then 1 else 3]
    [__("Schätzen"), 1]
    [__("Sternkunde"), 1]

    [__("Tulamidya"), -> (this.get('attributes')["KL"] - 2)]

    [__("Boote Fahren"), -1]
    -> [__("Heilkunde Gift"), 1] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    -> [__("Heilkunde Krankheit"), 1] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    -> [__("Heilkunde Wunden"), 2] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    -> [__("Holzbearbeitung"), 1] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    -> [__("Kochen"), 1] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    -> [__("Lederarbeiten"), 2] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    -> [__("Schneidern"), 1] if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))

    __("Wüstenkundig")
    __("Kulturkunde (Novadis)")
  ]


  professions: [
    -> __("Bote") if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    -> __("Entdecker") if (this.get('gender') == "w" && !this.has("Achmad’Sunni"))
    __("Gaukler")
    -> __("Krieger") if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    __("Kundschafter")
    -> __("Magier") if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    -> __("Söldner") if (this.get('gender') == "m" || this.has("Achmad’Sunni"))
    __("Streuner")
    __("Wundarzt")
  ]
]




