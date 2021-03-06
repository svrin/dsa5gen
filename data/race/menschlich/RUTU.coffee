###
  Die Menschen / Utulus
###

require ["data/race/menschlich"], (R) ->
  races.add _.extend R,
    name: __("Mensch/Utulus")

    name_m: __("Utulu")
    name_w: __("Utulu")

    hair: [
      [__("schwarz"), 1, 17]
      [__("blauschwarz"), 18, 20]
    ]
    eye: [
      [__("hellbraun"), 1, 3]
      [__("dunkelbraun"), 4, 10]
      [__("schwarz"), 11, 20]
    ]
    height: [165, 2, 20]

    cultures: [
      __("Aranier")
      __("Mhanadistani")
      __("Mohas")
      __("Novadis")
      __("Südaventurier")
    ]

    common: [
      __("Angenehmer Geruch")
      __("Hitzeresistenz")
      __("Immunität gegen Gift (Wurara)")
      __("Immunität gegen Krankheit (Flinker Difar)")
      __("Immunität gegen Krankheit (Brabaker Schweiß)")

      __("Kälteempfindlich")
    ]



