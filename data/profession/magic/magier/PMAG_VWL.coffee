###
  Magier / Verwandlungsmagier
###

class PMAG_VWL
  name: __("Magier/Verwandlungsmagier")

  groups: [
    __("Profession (magic)")
    __("Magier")
    __("Gildenmagier")
  ]

  name_m: __("Verwandlungsmagier")
  name_w: __("Verwandlungsmagierin")

  costs: 1000
  attribute: 'KL'

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Tradition"), __("Gildenmagier")]
    [__("Spezialgebiet"), __("Verwandlung")]
    add_pool(5, __("Zaubertricks"))
    [__("Zaubertricks"), 7]

    add_pool(35, __("Sprache"), __("Schrift"))

    [__("Etikette"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Willenskraft"), 4]

    [__("Orientierung"), 4]
    [__("Pflanzenkunde"), 4]
    [__("Tierkunde"), 4]
    [__("Wildnisleben"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Magiekunde"), 7]
    [__("Rechnen"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Alchimie"), 7]

    [__("Auris"), 4]
    [__("Manifesto"), 4]
    [__("Odem Arcanum"), 4]
    [__("Paralysis"), 7]
    [__("Psychostabilis"), 4]
    [__("Salander"), 7]
    [__("Transversalis"), 7]
  ]

  common: [
    __("Verbesserte Regeneration (Astralenergie)")

    __("Schlechte Eigenschaft (Neugier)")
    __("Schlechte Eigenschaft (Weltfremd)")

    __("MU")
    __("KL")
    __("IN")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blutrausch")
    __("Niedrige Magieresistenz")
    __("Schlechte Regeneration (Astralenergie)")
  ]

professions.add new PMAG_VWL()



