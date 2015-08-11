###
  Die Menschen / Nivese
###

require ["data/race/menschlich"], (R) ->
  races.add _.extend R,
    name: __("Mensch/Nivesen")

    name_m: __("Nivese")
    name_w: __("Nivesin")

    hair: [
      [__("kupferrot"), 1, 15]
      [__("blond"), 16]
      [__("braun"), 17, 18]
      [__("dunkelblond"), 19]
      [__("schwarz"), 20]
    ]
    eye: [
      [__("braun"), 1, 2]
      [__("hellbraun"), 3, 9]
      [__("bernsteinfarben"), 10, 14]
      [__("grün"), 15, 17]
      [__("blau"), 18, 19]
      [__("grau"), 20]
    ]
    height: [155, 2, 20]

    cultures: [
      __("Bornländer")
      __("Nivesen")
      __("Nordaventurier")
      __("Svellttaler")
    ]

    common: [
      __("Entfernungssinn")
      __("Kälteresistenz")

      __("Hitzempfindlich")
    ]



