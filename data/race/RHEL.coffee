###
  Die Halbelfen

  @version: US25001
  @page: 92
###

races.add
  name: __("Halbelf")
  name_m: __("Halbelf")
  name_w: __("Halbelfin")

  costs: 0

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
    [__("grau"), 4, 6]
    [__("blau"), 7, 10]
    [__("grün"), 11, 14]
    [__("dunkelbraun"), 15, 16]
    [__("hellbraun"), 17, 18]
    [__("bernsteinfarben"), 19]
    [__("goldgesprenkelt"), 20]
  ]

  height: [158, 1, 20, 4, 6]

  weight: ->
    this.get('profile')?['height']? - 120

  attributes:
    LE: 5
    SK: -4
    ZK: -6
    GS: 8

  auto: [
    choice(1, "MU", "KL", "IN", "CH", "FF", "GE", "KO", "KK")
  ]

  cultures: [
    __("Andergaster")
    __("Auelfen")
    __("Bornländer")
    __("Firnelfen")
    __("Horasier")
    __("Mittelreicher")
    __("Nivesen")
    __("Nostrier")
    __("Nordaventurier")
    __("Svellttaler")
    __("Thorwaler")
    __("Waldelfen")
  ]

  common: [
    __("Begabung (Singen)")
    __("Begabung (Musizieren)")
    __("Beidhändig")
    [__("Dunkelsicht"), 1]
    __("Flink")
    __("Gutaussehend")
    choice(1, __("Herausragender Sinn (Sicht)"), __("Herausragender Sinn (Gehör)"))
    __("Schlangenmensch")
    __("Wohlklang")
    __("Zauberer")
    __("Zweistimmiger Gesang")

    __("Sensibler Geruchssinn")
    __("Wahrer Name")
  ]

  uncommon: [
    __("Schwer zu verzaubern")
    __("Zwergennase")

    __("Blutrausch")
    __("Fettleibig")
    __("Krankheitsanfällig")
  ]





