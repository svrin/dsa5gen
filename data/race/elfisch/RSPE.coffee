###
  Die Elfen / Steppenelf
###

require ["data/race/elfisch"], (R) ->
  races.add _.extend R,
    name: __("Elf/Steppenelf")

    name_m: __("Steppenelf")
    name_w: __("Steppenelfin")

    hair: [
      [__("blauschwarz"), 1]
      [__("schwarz"), 2, 3]
      [__("silbern"), 5, 5]
      [__("weißblond"), 6, 7]
      [__("hellblond"), 8, 11]
      [__("mittelblond"), 12, 17]
      [__("dunkelblond"), 18, 20]
    ]
    eye: [
      [__("schwarzbraun"), 1, 2]
      [__("graublau"), 3, 4]
      [__("saphirblau"), 5, 6]
      [__("smaragdgrün"), 9, 12]
      [__("dunkelviolett"), 13, 16]
      [__("bernsteinfarben"), 17, 18]
      [__("goldgesprenkelt"), 19]
      [__("amethystfarben"), 20]
    ]



