###
  Die Menschen / Tulamiden
###

require ["data/race/menschlich"], (R) ->
  races.add _.extend R,
    name: __("Tulamiden")

    name_m: __("Tulamide")
    name_w: __("Tulamidin")

    hair: [
      [__("schwarz"), 1, 6]
      [__("dunkelbraun"), 7, 12]
      [__("mittelbraun"), 13, 14]
      [__("hellbraun"), 15, 17]
      [__("blond"), 18, 19]
      [__("rot"), 20]
    ]
    eye: [
      [__("schwarz"), 1, 4]
      [__("dunkelbraun"), 5, 12]
      [__("braun"), 13, 16]
      [__("grau"), 17, 18]
      [__("grün"), 19]
      [__("blau"), 20]
    ]
    height: [155, 2, 20]

    cultures: [
      __("Aranien")
      __("Ferkinas")
      __("Maraskaner")
      __("Novadis")
      __("Südaventurien")
      __("Trollzacker")
      __("Tulamidenlande")
      __("Zahori")
    ]

    common: [
      __("Hitzeresistenz")
    ]



