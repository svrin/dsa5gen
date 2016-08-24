###
  Spitzel

  @version: US25001
  @page: 142
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

  costs: 230

  auto: [
    add_pool(16, __("Sprache"), __("Schrift"))

    [__("Fertigkeitsspezalisierung (Verbergen)"), 1]

    [__("Raufen"), 10]
    [__("Dolche"), 12]

    [__("Sinnesschärfe"), 7]
    [__("Taschendiebstahl"), 5]
    [__("Verbergen"), 8]

    [__("Gassenwissen"), 6]
    [__("Menschenkenntnis"), 6]
    [__("Überreden"), 6]
    [__("Verkleiden"), 8]
    [__("Willenskraft"), 5]

    [__("Orientierung"), 3]

    [__("Götter & Kulte"), 3]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 2]

    [__("Handel"), 3]
    [__("Schlösserknacken"), 3]
  ]

  common: [
    __("Herausragender Sinn (Gehör)")
    __("Herausragender Sinn (Sicht)")
    __("Soziale Anpassungsfähigkeit")
    __("Zeitgefühl")
  ]

  uncommon: [
    __("Schlechte Eigenschaft (Jähzorn)")
  ]

  cultures:
    common: []
    uncommon: []

professions.add new PSPL()




