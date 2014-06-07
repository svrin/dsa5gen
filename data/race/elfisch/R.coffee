###
  Die Elfen
###

define "data/race/elifsch", [], () ->
    name: __("Elf")
    name_m: __("Elf")
    name_w: __("Elfin")

    costs: 260

    height: [168, 2, 20]

    weight: ->
      this.get('height') - 120

    attributes:
      LE: 20
      MR: 2
      IN: 10
      GE: 8

    auto: [
      __("Altersresistenz")
      [__("Dunkelsicht"), 1]
      choice(1, 1, __("Herausragende Eigenschaft (IN)"), __("Herausragende Eigenschaft (CH)"), __("Herausragende Eigenschaft (GE)"))
      choice(1, __("Herausragender Sinn (Gehör)"), __("Herausragender Sinn (Sicht)"))
      __("Krankheitsresistenz")
      __("Nichtschläfer")
      __("Wohlklang")
      [__("Zauberer"), 3]

      [__("Sensibler Geruchssinn"), 10]
      __("Unfähig (Zechen)")
    ]

    cultures: [
      __("Auelfen")
      __("Firnelfen")
      __("Steppenelfen")
      __("Waldelfen")
    ]

    common: [
      __("Balance")
      __("Begabung (Singen)")
      __("Begabung (Musizieren)")
      __("Beidhändig")
      [__("Dunkelsicht"), 2]
      __("Flink")
      __("Giftresistenz")
      __("Gutaussehend")
      __("Herausragender Sinn (Gehör)")
      __("Herausragender Sinn (Sicht)")
      __("Immunität gegen Krankheit (Schwarze Wut)")
      __("Immunität gegen Krankheit (Tollwut)")
      __("Immunität gegen Krankheit (Lykanthropie)")
      __("Richtungssinn")
      __("Schlangenmensch")
      __("Verbesserte Regeneration (Astralenergie)")
      __("Verbundenheit (Tiere)")
      __("Verbundenheit (Feen)")

      __("Kind der Wildnis")
      __("Körpergebundene Kraft")
      __("Lästige Mindergeister")
      __("Wahrer Name")
      __("Wilde Magie")
    ]

    uncommon: [
      __("Hitzeresistenz")
      __("Kampfrausch")
      __("Schwer zu verzaubern")
      __("Zwergennase")

      __("Blutrausch")
      __("Eingeschränkter Sinn")
      __("Fettleibig")
      __("Nachtblind")
      __("Übler Geruch")
      __("Unangenehme Stimme")
    ]





