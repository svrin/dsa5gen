###
  Hausdiener
###

class PHAU
  name: __("Hausdiener")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Hausdiener")
  ]

  name_m: __("Knecht")
  name_w: __("Magd")

  costs: 700

  auto: [
    add_pool(10, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

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

    [__("Fahrzeuge"), 4]
    [__("Handel"), 4]
    [__("Heilkunde Wunden"), 4]
    [__("Holzbearbeitung"), 4]
    [__("Kochen & Backen"), 4]
    [__("Lederbearbeitung"), 4]
    [__("Stoffbearbeitung"), 4]
  ]

  common: [
    __("Begabung in Gesellschaftstalenten")
    __("Soziale Anpassungsfähigkeit")

    __("Aberglaube")

    __("KO")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Übler Geruch")
  ]

  cultures:
    uncommon: [
      __("Ferkinas")
      __("Fjarninger")
      __("Gjalsker")
      __("Mohas")
      __("Nivesen")
      __("Trollzacker")
      __("Elfen")
    ]

professions.add new PHAU()



