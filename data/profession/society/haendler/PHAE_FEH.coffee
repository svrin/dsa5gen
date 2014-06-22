###
  Händler
###

class PHAE_FEH extends PHAE
  name: __("Händler/Fernhändler")

  name_m: __("Fernhändler")
  name_w: __("Fernhändlerin")

  costs: 920

  auto: [
    choice_from(35, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]
    [__("Stangenwaffen"), 4]

    [__("Körperbeherrschung"), 4]
    [__("Sinnesschärfe"), 4]

    [__("Fährtensuchen"), 4]
    [__("Orientierung"), 4]
    [__("Wildnisleben"), 4]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 7]
    [__("Willenskraft"), 4]

    [__("Geographie"), 7]
    [__("Götter & Kulte"), 4]
    [__("Magiekunde"), 4]
    [__("Rechnen"), 7]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
    [__("Sternkunde"), 4]

    [__("Fahrzeuge"), 4]
    [__("Handel"), 10]
  ]

professions.add new PHAE_FEH()

