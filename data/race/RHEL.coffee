###
  Halbelfen
###

races.add [
  name: __("Halbelfen")

  costs: 3

  profile:
    hair: [
      [__("rot"), 1, 3]
      [__("braun"), 4, 6]
      [__("dunkelblond"), 7, 10]
      [__("hellblond"), 11, 15]
      [__("weißblond"), 16, 17]
      [__("schwarz"), 18, 19]
      [__("blauschwarz"), 20]
    ]
    eye: [
      [__("schwarz"), 1, 3]
      [__("grau"), 3, 6]
      [__("blau"), 7, 10]
      [__("grün"), 11, 14]
      [__("dunkelbraun"), 15, 16]
      [__("hellbraun"), 17, 18]
      [__("bernsteinfarben"), 19]
      [__("goldgesprenkelt"), 20]
    ]
    height: [158, 1, 20, 4, 6]
    weight: ->
      char.profile.height - 120

  mods:
    KK: -1
    GE: 1
    LeP: 8
    AuP: 10
    MR: -4

  vantages:
    auto: [
      __("Viertelzauberer")
      __("Gut Aussehend")
      __("Zweistimmiger Gesang") if char.culture.is("Auelfen")
    ]
    recommended: [
      __("Balance")
      __("Dämmerungssicht")
      __("Feenfreund")
      __("Flink")
      __("Herausragender Sinn")
      __("Herausragendes Aussehen")
      __("Magiegespür")
      __("Schlangenmensch")
      __("Wohlklang")
      __("Zweistimmiger Gesang")
      __("Nahrungsrestriktion")
      __("Sensibler Geruchssinn")
    ]
    uncommon: [
      __("Kampfrausch")
      __("Zwergennase")
      __("Blutrausch")
      __("Fettleibig")
      __("Krankheitsanfällig")
      __("Lichtscheu")
      __("Nachtblind")
      __("Schwer zu verzaubern")
      __("Unangenehme Stimme")
    ]
    reduced: []

  skills: [
    [__("Körperbeherrschung"), 2]
    [__("Schleichen"), 1]
    [__("Singen"), 1]
    [__("Sinnesschärfe"), 2]
    [__("Tanzen"), 1]
    [__("Zechen"), -1]
  ]

  cultures: [
    __("Auelfen")
    __("Andergast/Nostria")
    __("Bornland")
    __("Mittelländische Städte")
    __("Horasreich")
  ]
]




