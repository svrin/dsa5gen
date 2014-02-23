###
  Zwerge
###

races.add [
  name: __("Zwerge")

  costs: 16

  requirements: [
    ["MU", 12] if char.gender["w"]
  ]

  profile:
    hair: [
      [__("blond"), 1, 5]
      [__("schwarz"), 6, 9]
      [__("dunkelgrau	"), 10, 11]
      [__("hellgrau"), 12, 13]
      [__("salzweiß"), 14]
      [__("silberweiß"), 15]
      [__("feuerrot	"), 16, 17]
      [__("kupferrot"), 18, 20]
    ]
    eye: [
      [__("dunkelbraun"), 1, 2]
      [__("braun"), 3, 5]
      [__("grün"), 6, 9]
      [__("blau"), 10]
      [__("grau"), 11, 14]
      [__("schwarz"), 15, 20]
    ]
    height: [128, 2, 6]
    weight: ->
      char.profile.height - 80

  mods:
    FF: 1
    GE: -1
    KO: 2
    KK: 2
    LeP: 12
    AuP: 18
    MR: -4

  vantages:
    auto: [
      __("Dämmerungssicht")
      __("Resistenz gegen mineralische Gifte")
      __("Resistenz gegen Krankheiten")
      __("Schwer zu verzaubern")
      [__("Goldgier"), 5]
      __("Unfähigkeit Schwimmen")
      __("Zwergenwuchs")
    ]
    recommended: [
      __("Ausdauernd")
      __("Eisern")
      __("Gutes Gedächtnis")
      __("Hitzeresistenz")
      __("Hohe Lebenskraft")
      __("Hohe Magieresistenz")
      __("Kampfrausch")
      __("Richtungssinn")
      __("Zäher Hund")
      __("Zwergennase")
      __("Blutrausch")
      __("Jähzorn")
      __("Lichtscheu")
      __("Platzangst")
      __("Unansehnlich")
    ]
    uncommon: [
      __("Feenfreund"),
      __("Flink")
      __("Herausragende Balance")
      __("Herausragendes Aussehen")
      __("Koboldfreund")
      __("Magiegespür")
      __("Schlangenmensch")
      __("Wohlklang")
      __("Dunkelangst")
      __("Glasknochen")
      __("Krankheitsanfällig")
      __("Nachtblind")
      __("Raumangst")
    ]
    reduced: []

  skills: [
    [__("Ringen"), 1]
    [__("Akrobatik"), -3]
    [__("Reiten"), -1]
    [__("Schwimmen"), -3]
    [__("Selbstbeherrschung"), 2]
    [__("Zechen"), 1]

    [__("Orientierung"), 1]

    [__("Gesteinskunde"), 1]
  ]

  cultures: [
    __("Ambosszwerge")
  ]
]




