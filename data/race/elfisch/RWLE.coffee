###
  Die Elfen / Waldelf
###

require ["data/race/elfisch"], (R) -> races.add _.extend R,
    name: __("Waldelf")

    hair: [
      [__("blauschwarz"), 1, 3]
      [__("schwarz"), 4, 7]
      [__("silbern"), 8, 10]
      [__("weißblond"), 11]
      [__("hellblond"), 12, 13]
      [__("mittelblond"), 14, 16]
      [__("dunkelblond"), 17, 19]
      [__("goldblond"), 20]
    ]
    eye: [
      [__("schwarzbraun"), 1, 2]
      [__("graublau"), 3, 4]
      [__("smaragdgrün"), 5, 8]
      [__("dunkelbraun"), 9, 12]
      [__("bernsteinfarben"), 13, 16]
      [__("goldgesprenkelt"), 17]
      [__("rubinrot"), 18, 19]
      [__("amethystviolett"), 20]
    ]



