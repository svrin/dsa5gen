###
  Die Menschen / Waldmensch
###

require ["data/race/menschlich"], (R) ->
  races.add _.extend R,
    name: __("Mensch/Waldmensch")

    name_m: __("Waldmensch")
    name_w: __("Waldmenschin")

    hair: [
      [__("schwarz"), 1, 5]
      [__("blauschwarz"), 6, 19]
      [__("dunkelbraun"), 20]
    ]
    eye: [
      [__("hellbraun"), 1, 3]
      [__("dunkelbraun"), 4, 10]
      [__("schwarz"), 11, 20]
    ]
    height: [142, 2, 20]

    cultures: [
      __("Aranien")
      __("Mohas")
      __("Novadis")
      __("Südaventurien")
      __("Tulamidenlande")
    ]

    common: [
      __("Herausragende Eigenschaft (GE)")
      __("Angenehmer Geruch")
      __("Hitzeresistenz")
      __("Immunität gegen Gift (Wurara)")
      __("Immunität gegen Krankheit (Flinker Difar)")
      __("Immunität gegen Krankheit (Brabaker Schweiß)")
    ]



