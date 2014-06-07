###
  Die Elfen / Firnelf
###

require ["data/race/elfisch"], (R) -> races.add _.extend R,
    name: __("Firnelf")

    hair: [
      [__("blauschwarz"), 1]
      [__("schwarz"), 2]
      [__("silbern"), 3, 5]
      [__("schneeweiß"), 6, 9]
      [__("weißblond"), 10, 14]
      [__("hellblond"), 15, 17]
      [__("mittelblond"), 18, 19]
      [__("dunkelblond"), 20]
    ]
    eye: [
      [__("schwarz"), 1]
      [__("silbergrau"), 2, 3]
      [__("eisgrau"), 4, 7]
      [__("saphirblau"), 8, 11]
      [__("smaragdgrün"), 12, 15]
      [__("bernsteinfarben"), 16, 18]
      [__("goldgesprenkelt"), 19]
      [__("rubinrot"), 20]
    ]



