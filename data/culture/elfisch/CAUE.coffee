###
  Auelfen
###

cultures.add [
  name: __("Auelfen")

  costs: -> if char.race.is("Halbelfen") then 12 else 4

  vantages:
    auto: [
      __("Elfische Weitsicht"),
      [__("Neugier"), 5]
      [__("Weltfremd (Besitz)"), 6]
      [__("Weltfremd (Götterverehrung)"), 6]
    ]
    recommended: [
      __("Ausdauernd"),
      __("Feenfreund"),
      __("Gefahreninstinkt"),
      __("Arroganz"),
      __("Vorurteile")
    ]
    uncommon: [
      __("Soziale Anpassungsfähigkeit"),
      __("Goldgier")
      __("Rachsucht")
    ]
    reduced: [
      __("Aufmerksamkeit"),
      __("Kampf im Wasser"),
      __("Regeneration I")
    ]

  skills: [
    [__("Bogen"), 3, "L"]
    [__("Dolche"), 2]

    [__("Athletik"), 1]
    [__("Klettern"), 1]
    [__("Körperbeherschung"), 2]
    [__("Schleichen"), 3]
    [__("Schwimmen"), 4, "L"]
    [__("Sich Verstecken"), 5, "L"]
    [__("Singen"), 2]
    [__("Sinnesschärfe"), 1]
    [__("Tanzen"), 2]

    [__("Betören"), 3]
    [__("Gassenwissen"), -2]

    [__("Fährtensuche"), 3, "L"]
    [__("Fischen/Angeln"), 3, "L"]
    [__("Orientierung"), 2]
    [__("Wildnisleben"), 5, "L"]

    [__("Magiekunde"), 3]
    [__("Pflanzenkunde"), 3]
    [__("Rechtskunde"), -2]
    [__("Sagen/Legenden"), 2]
    [__("Tierkunde"), 2]

    [__("Isdira"), -> char.attributes["KL"] - 2]
    choice_from(4, __("Sprache kennen"))

    choice(2, __("Bogenbau"), __("Boote Fahren"), "L")
    [__("Heilkunde Gift"), 1]
    [__("Heilkunde Wunden"), 1, "L"]
    [__("Holzbearbeitung"), 2]
    [__("Lederarbeiten"), 2]
    [__("Musizieren"), 3]
    [__("Schneidern"), 2]

    [__("Attributo"), 7]
    [__("Balsam Salabunde"), 9]
    [__("Bannbaladin"), 9, "H"]
    [__("Flim Flam"), 7]
    [__("Fulminictus"), 8, "H"]
    [__("Sensibar"), 8, "H"]

    __("Große Mediation")
    __("Kulturkunde (Auelfen)")
    __("Repräsentation (Elfen)")
    __("Salasandra")
    __("Sumpfkundig")
    __("Freundschaftslied")
  ]


  professions: [
    __("Legendensänger"),
    __("Wildnisläufer")
  ]

  equipments: [
    __("Elfenbogen")
    __("Köcher")
    [__("Pfeile"), 12]
    __("Jagdmesser")
    __("Kleidung")
    choice_from(1, __("Musikinstrument"))
    __("Umhängetasche")
  ]
]




