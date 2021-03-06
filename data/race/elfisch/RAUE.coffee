###
  Die Elfen / Auelf
###

require ["data/race/elfisch"], (R) ->
  races.add _.extend R,
    name: __("Elf/Auelf")

    name_m: __("Auelf")
    name_w: __("Auelfin")

    hair: [
      [__("blauschwarz"), 1]
      [__("schwarz"), 2, 3]
      [__("silbern"), 4, 5]
      [__("weißblond"), 6, 7]
      [__("hellblond"), 8, 11]
      [__("mittelblond"), 12, 17]
      [__("dunkelblond"), 18, 20]
    ]
    eye: [
      [__("schwarzbraun"), 1, 2]
      [__("graublau"), 3, 4]
      [__("saphirblau"), 5, 8]
      [__("smaragdgrün"), 9, 12]
      [__("dunkelviolett"), 13, 16]
      [__("bernsteinfarben"), 17, 18]
      [__("goldgesprenkelt"), 19]
      [__("amethystfarben"), 20]
    ]



