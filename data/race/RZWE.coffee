###
  Die Zwerge

  @version: US25001
  @page: 94
###

races.add
  name: __("Zwerge")
  name_m: __("Zwerg")
  name_w: __("Zwergin")

  costs: 61

  hair: [
    [__("blond"), 1, 5]
    [__("schwarz"), 6, 9]
    [__("dunkelgrau"), 10, 11]
    [__("hellgrau"), 12, 13]
    [__("salzweiß"), 14]
    [__("silberweiß"), 15]
    [__("feuerrot"), 16, 17]
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
    this.get('profile')?['height']? - 80

  attributes:
    LE: 8
    SK: -4
    ZK: -4
    GS: 6

    KO: 1
    KK: 1

  auto: [
    choice(-2, "CH", "GE")
  ]

  ultra: [
    [__("Dunkelsicht"), 1]
    __("Immunität gegen Tulmadron")
    __("Unfähig (Schwimmen)")
  ]

  cultures: [
    __("Ambosszwerge")
    __("Brillantzwerge")
    __("Erzzwerge")
    __("Hügelzwerge")
  ]

  common: [
    [__("Dunkelsicht"), 2]
    __("Hitzeresistenz")
    __("Hohe Zähigkeit")
    __("Krankheitsresitenz")
    __("Richtungssinn")
    __("Schwer zu verzaubern")
    __("Zäher Hund")
    __("Zwergennase")

    __("Blutrausch")
  ]

  uncommon: [
    __("Schlangenmensch")
    __("Wohlklang")
    __("Zauberer")

    __("Hitzeempfindlichkeit")
    __("Nachtblind")
    __("Niedrige Seelenkraft")
    __("Niedrige Zähigkeit")
    __("Zerbrechlich")
  ]




