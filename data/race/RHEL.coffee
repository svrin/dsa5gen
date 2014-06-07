###
  Die Halbelfen
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
      LE: 23
      MR: 1
      IN: 10
      GE: 8

    cultures: [
      __("Auelfen")
      __("Bornland")
      __("Firnelfen")
      __("Horasreich")
      __("Mittelreich")
      __("Nivesen")
      __("Nostria & Andergast")
      __("Nordaventurien")
      __("Steppenelfen")
      __("Südaventurien")
      __("Svellttal")
      __("Thorwaler")
      __("Waldelfen")
    ]

    common: [
      __("Balance")
      __("Begabung (Singen)")
      __("Begabung (Musizieren)")
      __("Beidhändig")
      [__("Dunkelsicht"), 1]
      __("Flink")
      __("Gefahreninstinkt")
      __("Gutaussehend")
      __("Herausragende Eigenschaft")
      choice(1, __("Herausragender Sinn (Sicht)"), __("Herausragender Sinn (Gehör)"))
      __("Magiegespür")
      __("Schlangenmensch")
      __("Verbundenheit (Tiere)")
      __("Verbundenheit (Feen)")
      __("Wohlklang")
      __("Zauberer")

      __("Sensibler Geruchssinn")
      __("Wahrer Name")
    ]

    uncommon: [
      __("Kampfrausch")
      __("Schwer zu verzaubern")
      __("Zwergennase")

      __("Blutrausch")
      __("Fettleibig")
      __("Krankheitsanfällig")
      __("Unangenehme Stimme")
    ]





