###
  Die Menschen / Nivese
###

require ["data/race/menschlich"], (R) ->
  races.add _.extend R,
    name: __("Mensch/Norbarde")

    name_m: __("Norbarde")
    name_w: __("Norbardin")

    hair: [
      [__("schwarz"), 1, 17]
      [__("kupferrot"), 18, 19]
      [__("blond"), 20]
    ]
    eye: [
      [__("schwarz"), 1, 3]
      [__("dunkelbraun"), 4, 13]
      [__("braun"), 14, 17]
      [__("grün"), 18, 19]
      [__("blau"), 20]
    ]
    height: [158, 2, 20]

    cultures: [
      __("Bornland")
      __("Norbarden")
      __("Nordaventurien")
    ]

    common: [
      __("Herausragende Eigenschaft (KO)")
    ]



