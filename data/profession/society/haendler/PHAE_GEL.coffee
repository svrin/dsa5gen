###
  Händler
###

class PHAE_GEL extends PHAE
  name: __("Händler/Geldwechsler")

  name_m: __("Geldwechsler")
  name_w: __("Geldwechslerin")

  costs: 710

  auto: [
    choice_from(35, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]
    [__("Stangenwaffen"), 4]

    [__("Sinnesschärfe"), 4]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 7]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 7]
    [__("Willenskraft"), 4]

    [__("Geographie"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 10]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Fahrzeuge"), 4]
    [__("Handel"), 10]
  ]

professions.add new PHAE_GEL()

