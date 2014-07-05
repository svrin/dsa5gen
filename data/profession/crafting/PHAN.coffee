###
  Handwerker
###

class PHAN
  name: __("Handwerker")

  groups: [
    __("Profession (profan)")
    __("Profession (military)")
    __("Handwerker")
  ]

  name_m: __("Handwerker")
  name_w: __("Handwerkerin")

  costs: 600

  auto: [
    add_pool(20, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]
    [__("Hiebwaffen"), 4]
    [__("Stangenwaffen"), 4]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 4]

    [__("Götter & Kulte"), 4]
    [__("Handel"), 4]
    [__("Rechen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    add_pool(150, __("Handwerkstalente"))
  ]

  common: [
    __("Begabung in Handwerkstalenten")
    __("Balance")
    __("Herausragender Sinn")
    __("Hitzeresistenz")

    __("Aberglaube")
    __("Vorurteile")

    __("IN")
    __("FF")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blind")
    __("Blutrausch")
    __("Farbenblind")
    __("Unfähig in Handwerkstalenten")
    __("Verstümmelt")
  ]

professions.add new PHAN()



