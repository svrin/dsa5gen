###
  Spitzel
###

class PSPL
  name: __("Spitzel")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Spitzel")
  ]

  name_m: __("Spitzel")
  name_w: __("Spitzel")

  costs: 1050

  auto: [
    add_pool(45, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Sinnesschärfe"), 7]
    [__("Taschendiebstahl"), 7]
    [__("Verbergen"), 10]

    [__("Gassenwissen"), 7]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 7]
    [__("Verkleiden"), 10]
    [__("Willenskraft"), 7]

    [__("Orientierung"), 4]

    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Handel"), 4]
    [__("Schlösserknacken"), 4]
  ]

  common: [
    __("Gefahreninstinkt")
    __("Herausragender Sinn")
    __("Soziale Anpassungsfähigkeit")
    __("Zeitgefühl")

    __("MU")
    __("IN")
    __("CH")
    __("GE")
  ]

  uncommon: [
    __("Schlechte Eigenschaft (Jähzorn)")
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

professions.add new PSPL()




