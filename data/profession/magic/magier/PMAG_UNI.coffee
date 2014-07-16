###
  Magier / Universalmagier
###

class PMAG_UNI
  name: __("Magier/Universalmagier")

  groups: [
    __("Profession (magic)")
    __("Magier")
    __("Gildenmagier")
  ]

  name_m: __("Universalmagier")
  name_w: __("Universalmagierin")

  costs: 900
  attribute: 'KL'

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Tradition"), __("Gildenmagier")]

    add_pool(50, __("Sprache"), __("Schrift"))

    [__("Stangenwaffen"), 4]

    [__("Etikette"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Willenskraft"), 4]

    [__("Orientierung"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Magiekunde"), 7]
    [__("Rechnen"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Alchimie"), 4]

    [__("Armatrutz"), 7]
    [__("Blick in die Gedanken"), 4]
    [__("Flim Flam"), 4]
    [__("Fulminictus"), 7]
    [__("Odem Arcanum"), 4]
    [__("Paralysis"), 7]
    [__("Penetrizzel"), 4]
  ]

  common: [
    __("Hohe Magieresistenz")
    __("Verbesserte Regeneration (Astralenergie)")

    __("Eitelkeit")
    __("Neugier")
    __("Weltfremd")

    __("KL")
    __("IN")
    __("CH")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Niedrige Magieresistenz")
    __("Schlechte Regeneration (Astralenergie)")
  ]

professions.add new PMAG_UNI()



