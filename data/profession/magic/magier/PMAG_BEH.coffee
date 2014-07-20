###
  Magier / Beherschungsmagier
###

class PMAG_BEH
  name: __("Magier/Beherschungsmagier")

  groups: [
    __("Profession (magic)")
    __("Magier")
    __("Gildenmagier")
  ]

  name_m: __("Beherschungsmagier")
  name_w: __("Beherschungsmagierin")

  costs: 1050
  attribute: 'KL'

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Tradition"), __("Gildenmagier")]
    [__("Spezialgebiet"), __("Beherrschung")]
    add_pool(5, __("Zaubertricks"))
    [__("Zaubertricks"), 7]

    add_pool(40, __("Sprache"), __("Schrift"))

    [__("Stangenwaffen"), 4]

    [__("Betören"), 4]
    [__("Etikette"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Willenskraft"), 7]

    [__("Geschichtswissen"), 7]
    [__("Götter & Kulte"), 4]
    [__("Magiekunde"), 7]
    [__("Rechnen"), 4]
    [__("Sagen & Legenden"), 7]

    [__("Alchimie"), 4]

    [__("Bannbaladin"), 7]
    [__("Blick in die Gedanken"), 7]
    [__("Horriphobus"), 7]
    [__("Objectovoco"), 4]
    [__("Odem Arcanum"), 4]
    [__("Paralysis"), 4]
    [__("Respondami"), 4]
  ]

  common: [
    __("Soziale Anpassungsfähigkeit")
    __("Verbesserte Regeneration (Astralenergie)")

    __("Schlechte Eigenschaft (Arroganz)")
    __("Schlechte Eigenschaft (Eitelkeit)")
    __("Schlechte Eigenschaft (Neugier)")

    __("MU")
    __("KL")
    __("CH")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blutrausch")
    __("Niedrige Magieresistenz")
    __("Schlechte Regeneration (Astralenergie)")
  ]

professions.add new PMAG_BEH()



