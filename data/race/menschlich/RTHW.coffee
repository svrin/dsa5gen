###
  Die Menschen / Thorwaler
###

require ["data/race/menschlich"], (R) ->
  races.add _.extend R,
    name: __("Mensch/Thorwaler")

    name_m: __("Thorwaler")
    name_w: __("Thorwalerin")

    hair: [
      [__("blond"), 1, 8]
      [__("rotblond"), 9, 13]
      [__("weißblond"), 14, 15]
      [__("rot"), 16, 17]
      [__("dunkelblond"), 18]
      [__("braun"), 19]
      [__("schwarz"), 20]
    ]
    eye: [
      [__("dunkelbraun"), 1, 2]
      [__("braun"), 3, 7]
      [__("grün"), 8, 11]
      [__("blau"), 12, 18]
      [__("grau"), 19, 20]
    ]
    height: [168, 2, 20]

    cultures: [
      __("Fjarninger")
      __("Nordaventurier")
      __("Thorwaler")
    ]

    common: [
      __("Hohe Zähigkeit")
      __("Zäher Hund")

      __("Blutrausch")
    ]



