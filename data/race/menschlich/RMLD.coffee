###
  Die Menschen / Mittelländer

  @version: US25001
  @page: 89
###

require ["data/race/menschlich"], (R) ->
  races.add _.extend R,
    name: __("Mensch/Mittelländer")

    name_m: __("Mittelländer")
    name_w: __("Mittelländerin")

    hair: [
      [__("schwarz"), 1, 3]
      [__("braun"), 4, 7]
      [__("dunkelblond"), 8, 12]
      [__("blond"), 13, 16]
      [__("weißblond"), 17, 18]
      [__("rot"), 19, 20]
    ]
    eye: [
      [__("dunkelbraun"), 1, 2]
      [__("braun"), 3, 9]
      [__("grün"), 10, 11]
      [__("blau"), 12, 17]
      [__("grau"), 18, 19]
      [__("schwarz"), 20]
    ]
    height: [160, 2, 20]

    cultures: [
      __("Andergaster")
      __("Bornländer")
      __("Horasier")
      __("Maraskaner")
      __("Mittelreicher")
      __("Nordaventurier")
      __("Nostrier")
      __("Südaventurier")
      __("Svellttaler")
      __("Zyklopäer")
    ]



