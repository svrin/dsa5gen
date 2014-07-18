###
  Die Zwerge
###

races.add
  name: __("Zwerge")
  name_m: __("Zwerg")
  name_w: __("Zwergin")

  costs: 150

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
    LE: 30
    MR: 2
    INI: 10
    GS: 6

  auto: [
    [__("Dunkelsicht"), 1]
    choice(1, 1, __("Herausragende Eigenschaft (FF)"), __("Herausragende Eigenschaft (KO)"),
      __("Herausragende Eigenschaft (KK)"))
    __("Krankheitsresistenz")
    __("Schwer zu verzaubern")

    __("Unfähig (Schwimmen)")
  ]

  cultures: [
    __("Ambosszwerge")
    __("Brillantzwerge")
    __("Brobim")
    __("Erzzwerge")
    __("Hügelzwerge")
  ]

  common: [
    [__("Dunkelsicht"), 2]
    __("Eisern")
    __("Gefahreninstinkt")
    __("Gutes Gedächtnis")
    __("Hitzeresistenz")
    __("Hohe Magieresistenz")
    __("Kampfrausch")
    __("Hohe Lebenskraft")
    __("Immunität gegen Gift (Tulmadron)")
    __("Immunität gegen Gift (schwermetallhaltige Speisepilze)")
    __("Richtungssinn")
    __("Zäher Hund")
    __("Zwergennase")

    __("Blutrausch")
    __("Lichtempfindlich")
  ]

  uncommon: [
    __("Balance")
    __("Magiegespür")
    __("Schlangenmensch")
    __("Verbundenheit")
    __("Wohlklang")

    __("Glasknochen")
    __("Hitzeempfindlichkeit")
    __("Nachtblind")
    __("Niedrige Magieresistenz")
    __("Zauberer")
    __("Zerbrechlich")
  ]




