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
  attribute: 'CH'

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Tradition"), __("Hexe")]
    [__("Schwesternschaft"), __("Schöne der Nacht")]
    add_pool(5, __("Zaubertricks"))
    [__("Zaubertricks"), 7]
    [__("Zwiegespräch"), 1]

    add_pool(((character) ->
      Math.round(character.get('AP') / 4)), __("Vertrauter"), __('Vertrautenmagie'))
    add_pool(35, __("Sprache"), __("Schrift"))

    [__("Zaubertradition mit Vertrautentiere")]
    ["V_MU", 2],
    ["V_KL", 2],
    ["V_IN", 2],
    ["V_CH", 2],
    ["V_FF", 2],
    ["V_GE", 2],
    ["V_KO", 2],
    ["V_KK", 2]
    ["V_LE", 10],
    ["V_AE", 15],
    ["V_RS", 1],
    ["V_MR", 1]

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
    [__("Satuarias Herrlichkeit"), 7]
  ]

  common: [
    __("Angenehmer Geruch")
    __("Flink")
    __("Gutausehend")
    __("Soziale Anpassungsfähigkeit")
    __("Verhüllte Aura")

    __("Schlechte Eigenschaft (Arroganz)")
    __("Schlechte Eigenschaft (Eitelkeit)")
    __("Schlechte Eigenschaft (Goldgier)")
    __("Schlechte Eigenschaft (Rachsucht)")

    __("IN")
    __("CH")
    __("GE")
  ]

  uncommon: [
    __("Zäher Hund")

    __("Hässlich")
  ]

professions.add new PHEX_SDN()



