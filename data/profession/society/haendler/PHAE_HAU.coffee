###
  Händler
###

class PHAE_HAU extends PHAE
  name: __("Händler/Hausier")

  name_m: __("Hausier")
  name_w: __("Hausierin")

  costs: 860

  auto: [
    add_pool(35, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]
    [__("Stangenwaffen"), 4]

    [__("Sinnesschärfe"), 4]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 7]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 10]
    [__("Willenskraft"), 4]

    [__("Orientierung"), 4]
    [__("Wildnisleben"), 4]

    [__("Geographie"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 7]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Fahrzeuge"), 4]
    [__("Handel"), 10]
  ]

professions.add new PHAE_HAU()

