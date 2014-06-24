###
  Händler
###

class PHAE_TAU extends PHAE
  name: __("Händler/Tauschhändler")

  name_m: __("Tauschhändler")
  name_w: __("Tauschhändlerin")

  costs: 800

  auto: [
    add_pool(35, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]
    [__("Stangenwaffen"), 4]

    [__("Körperbeherrschung"), 4]
    [__("Sinnesschärfe"), 4]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 7]
    [__("Willenskraft"), 4]

    [__("Fährtensuchen"), 4]
    [__("Orientierung"), 4]
    [__("Wildnisleben"), 4]

    [__("Geographie"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 7]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Fahrzeuge"), 1]
    [__("Handel"), 10]
  ]

  cultures:
    common: [
      __("Ferkinas")
      __("Fjarninger")
      __("Gjalsker")
      __("Mohas")
      __("Nivesen")
      __("Trollzacker")
      __("Elfen")
    ]

professions.add new PHAE_TAU()

