###
  Hausdiener
###

class PHAU_KUT extends PHAU
  name: __("Hausdiener/Kutscher")

  name_m: __("Kutscher")
  name_w: __("Kutscherin")

  costs: 790

  auto: [
    choice_from(10, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Reiten"), 4]
    [__("Selbstbeherrschung"), 4]
    [__("Sinnesschärfe"), 4]
    [__("Verbergen"), 4]
    [__("Zechen"), 4]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 4]

    [__("Tierkunde"), 4]

    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Fahrzeuge"), 7]
    [__("Handel"), 4]
    [__("Heilkunde Wunden"), 4]
    [__("Holzbearbeitung"), 7]
    [__("Kochen & Backen"), 4]
    [__("Lederbearbeitung"), 4]
    [__("Stoffbearbeitung"), 4]
  ]

professions.add new PHAU_KUT()

