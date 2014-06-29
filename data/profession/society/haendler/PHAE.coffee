###
  Händler
###

class PHAE
  name: __("Händler")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Händler")
  ]

  name_m: __("Krämer")
  name_w: __("Krämerin")

  costs: 650

  auto: [
    add_pool(35, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]
    [__("Stangenwaffen"), 4]

    [__("Sinnesschärfe"), 4]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 7]
    [__("Willenskraft"), 4]

    [__("Geographie"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 7]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Fahrzeuge"), 4]
    [__("Handel"), 10]
  ]

  common: [
    __("Begabung in Gesellschaftstalenten")
    __("Soziale Anpassungsfähigkeit")
    __("Wohlklang")
    __("Zeitgefühl")

    __("Geiz")
    __("Goldgier")
    __("Neid")

    __("KL")
    __("IN")
    __("CH")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blind")
    __("Blutrausch")
    __("Hässlich")
    __("Platzangst")
    __("Weltfremd")
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

professions.add new PHAE()



