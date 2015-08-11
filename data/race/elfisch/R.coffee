###
  Die Elfen

  @version: US25001
  @page: 91
###

define "data/race/elfisch", [], () ->
  name: __("Elf")
  name_m: __("Elf")
  name_w: __("Elfin")

  costs: 18

  height: [168, 2, 20]

  weight: ->
    this.get('profile')?['height']? - 120

  attributes:
    LE: 2
    SK: -4
    ZK: -6
    GS: 8

    IN: 1
    GE: 1

  auto: [
    __("Zweistimmiger Gesang")
    __("Zauberer")
#/* @TODO: choice(-2, "KL", "KK") */
  ]

  cultures: [
    __("Auelfen")
    __("Firnelfen")
    __("Waldelfen")
  ]

  ultra: [
    __("Altersresistenz")
    [__("Dunkelsicht"), 1]
    __("Nichtschläfer")
    __("Sensibler Geruchssinn")
    __("Unfähig (Zechen)")
  ]

  common: [
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
    __("Krankheitsresitenz")
    __("Richtungssinn")
    __("Schlangenmensch")
    __("Verbesserte Regeneration (Astralenergie)")
    __("Wohlklang")

    __("Körpergebundene Kraft")
    __("Lästige Mindergeister")
    __("Wahrer Name")
  ]

  uncommon: [
    __("Hitzeresistenz")
    __("Schwer zu verzaubern")
    __("Zwergennase")

    __("Blutrausch")
    __("Eingeschränkter Sinn")
    __("Fettleibig")
    __("Nachtblind")
  ]





