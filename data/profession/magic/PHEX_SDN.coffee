###
  Hexe / Schwesternschaft: Schöne der Nacht
###

class PHEX_SDN
  name: __("Hexe/Schöne der Nacht")

  groups: [
    __("Profession (magic)")
    __("Hexe")
  ]

  name_m: __("Schöner der Nacht")
  name_w: __("Schöne der Nacht")

  costs: 900

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Schwesternschaft"), __("Schöne der Nacht")]

    add_pool(35, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Fliegen"), 4]
    [__("Klettern"), 4]
    [__("Sinnesschärfe"), 4]

    [__("Betören"), 4]
    [__("Etikette"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 4]
    [__("Verkleiden"), 4]

    [__("Orientierung"), 4]

    [__("Götter & Kulte"), 4]
    [__("Magiekunde"), 4]

    [__("Grosse Gier"), 7]
    [__("Harmlose Gestalt"), 4]
    [__("Hexengalle"), 4]
    [__("Katzenaugen"), 7]
    [__("Odem Arcanum"), 4]
    [__("Motoricus"), 4]
    [__("Saturias Herrlichkeit"), 7]
  ]

  common: [
    __("Angenehmer Geruch")
    __("Flink")
    __("Gutausehend")
    __("Soziale Anpassungsfähigkeit")
    __("Verhüllte Aura")

    __("Arroganz")
    __("Eitelkeit")
    __("Goldgier")
    __("Rachsucht")

    __("IN")
    __("CH")
    __("GE")
  ]

  uncommon: [
    __("Zäher Hund")

    __("Hässlich")
  ]

professions.add new PHEX_SDN()



