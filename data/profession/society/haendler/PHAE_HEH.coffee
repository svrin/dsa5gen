###
  Händler
###

class PHAE_HEH extends PHAE
  name: __("Händler/Hehler")

  name_m: __("Hehler")
  name_w: __("Hehlerin")

  costs: 770

  auto: [
    add_pool(35, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]
    [__("Stangenwaffen"), 4]

    [__("Sinnesschärfe"), 4]
    [__("Verbergen"), 4]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 10]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 7]
    [__("Verkleiden"), 4]
    [__("Willenskraft"), 4]

    [__("Geographie"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 7]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Fahrzeuge"), 4]
    [__("Handel"), 10]
  ]

professions.add new PHAE_HEH()

