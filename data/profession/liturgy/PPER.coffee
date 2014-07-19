###
  Perainegeweihter
###

class PPER
  name: __("Zwölfgötterkult/Perainegeweihter")

  groups: [
    __("Profession (liturgy)")
    __("Geweihter (Zwölfgötterkult)")
    __("Geweihter (Peraine)")
  ]

  name_m: __("Perainegeweihter")
  name_w: __("Perainegeweihte")

  costs: 850

  required: [
    [__("Geweihter"), 1]
  ]

  auto: [
    [__("Tradition"), __("Zwölfgötterkult")]
    [__("Kirche"), __("Peraine")]

    add_pool(10, __("Sprache"), __("Schrift"))

    [__("Hiebwaffen"), 4]
    [__("Raufen"), 4]

    [__("Selbstbeherrschung"), 4]

    [__("Bekehren & Überzeugen"), 7]
    [__("Etikette"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Willenskraft"), 4]

    [__("Pflanzekunde"), 7]

    [__("Götter & Kulte"), 7]
    [__("Rechnen"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Heilkunde Gift"), 4]
    [__("Heilkunde Krankheit"), 7]
    [__("Heilkunde Wunden"), 7]

    [__("12 Segnungen"), 7]
    [__("Giftbann"), 4]
    [__("Heilende Hände"), 7]
  ]

  common: [
    __("Giftresistenz")
    __("Herausragende Eigenschaft (MU)")
    __("Herausragende Eigenschaft (IN)")
    __("Herausragende Eigenschaft (CH)")
    __("Immunität gegen Gift")
    __("Immunität gegen Krankheiten")
    __("Krankheitsresistenz")
    __("Saumagen")
    __("Vertrauenserweckend")

    __("Prinzipientreue")
    __("Übler Geruch")
    __("Verpflichtungen")

    __("IN")
    __("CH")
    __("KO")
  ]

  uncommon: [
    __("Angenehmer Geruch")

    __("Kampfrausch")
  ]

professions.add new PPER()



