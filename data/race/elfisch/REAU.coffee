###
  Auelfen
###

races.add [
  name: __("Auelfen")
  name_m: __("Auelfe")
  name_w: __("Auelfe")

  costs: 20

  profile:
    hair: [
      [__("blauschwarz"), 1]
      [__("schwarz"), 2, 3]
      [__("silbern"), 4, 5]
      [__("weißblond"), 6, 7]
      [__("hellblond"), 8, 11]
      [__("mittelblond"), 12, 17]
      [__("dunkelblond"), 18, 20]
    ]
    eye: [
      [__("schwarzbraun"), 1, 2]
      [__("graublau"), 3, 4]
      [__("saphirblau"), 5, 8]
      [__("smaragdgrün"), 9, 12]
      [__("dunkelviolett"), 13, 16]
      [__("bernsteinfarben"), 17, 18]
      [__("goldgesprenkelt"), 19]
      [__("amethyst"), 20]
    ]
    height: [168, 2, 20]
    weight: ->
      this.get('profile')['height'] - 120

  attributes:
    KK: -1
    GE: 2
    KL: -1
    IN: 1
    LeP: 6
    AuP: 12
    MR: -4

  vantages:
    auto: [
      __("Altersresistenz")
      __("Dämmerungssicht")
      __("Gut Aussehend")
      choice(__("Herausragender Sinn (Gehör)"), __("Herausragender Sinn (Geruch)"), __("Herausragender Sinn (Sicht)"))
      __("Resistenz gegen Krankheiten")
      __("Vollzauberer")
      __("Wohlklang")
      __("Zweistimmiger Gesang")
      [__("Sensibler Geruchssinn"), 6]
      __("Unfähigkeit (Zechen)")
    ]
    recommended: [
      __("Balance")
      __("Feenfreund")
      __("Flink")
      __("Herausragende Balance")
      __("Herausragendes Aussehen")
      __("Nachtsicht")
      __("Richtungssinn")
      __("Schlangenmensch")
      __("Nahrungsrestriktion")
      __("Raumangst")
    ]
    uncommon: [
      __("Hitzeresistenz"),
      __("Kampfrausch")
      __("Schwer zu verzaubern")
      __("Zwergennase")
      __("Blutrausch")
      __("Eingeschränkter Sinn")
      __("Farbenblind")
      __("Fettleibig")
      __("Krankheitsanfällig")
      __("Lichtscheu")
      __("Nachtblind")
      __("Unangenehme Stimme")
    ]
    reduced: []

  skills: [
    [__("Körperbeherrschung"), 3]
    [__("Schleichen"), 2]
    [__("Singen"), 2]
    [__("Sinnesschärfe"), 5]
    [__("Tanzen"), 1]
    [__("Zechen"), -2]

    [__("Orientierung"), 1]

    [__("Gesteinskunde"), 1]
  ]

  cultures: [
    __("Auelfen")
  ]
]




