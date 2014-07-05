###
  Magier / Kampfmagier
###

class PMAG_KPF
  name: __("Magier/Kampfmagier")

  groups: [
    __("Profession (magic)")
    __("Magier")
    __("Gildenmagier")
  ]

  name_m: __("Kampfmagier")
  name_w: __("Kampfmagierin")

  costs: 1000

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Tradition"), __("Gildenmagier")]
    [__("Spezialgebiet"), __("Kampf")]

    add_pool(30, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]
    [__("Raufen"), 4]
    [__("Stangenwaffen"), 7]

    [__("Körperbeherrschung"), 4]
    [__("Selbstbeherrschung"), 4]

    [__("Etikette"), 7]
    [__("Menschenkenntnis"), 4]
    [__("Willenskraft"), 7]

    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Magiekunde"), 4]
    [__("Rechnen"), 4]
    [__("Sagen & Legenden"), 7]

    [__("Heilkunde Wunden"), 4]
    [__("Seefahrt"), 4]

    [__("Armatrutz"), 4]
    [__("Blitz"), 7]
    [__("Corpofesso"), 4]
    [__("Duplicatus"), 4]
    [__("Gardianum"), 7]
    [__("Horriphobus"), 4]
    [__("Ignifaxius"), 7]
    [__("Odem Arcanum"), 4]
  ]

  common: [
    __("Verbesserte Regeneration (Astralenergie)")
    __("Zäher Hund")

    __("Arroganz")
    __("Eitelkeit")
    __("Neugier")

    __("MU")
    __("KL")
    __("IN")
    __("GE")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Niedrige Magieresistenz")
    __("Schlechte Regeneration (Astralenergie)")
  ]

professions.add new PMAG_KPF()



