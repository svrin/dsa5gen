###
  Spitzel
###

class PSPL_GHA extends PSPL
  name: __("Spitzel/Geheimagent")

  name_m: __("Geheimagent")
  name_w: __("Geheimagentin")

  costs: 1090

  auto: [
    add_pool(45, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Sinnesschärfe"), 7]
    [__("Taschendiebstahl"), 4]
    [__("Verbergen"), 10]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 7]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 7]
    [__("Verkleiden"), 10]
    [__("Willenskraft"), 7]

    [__("Orientierung"), 4]

    [__("Geographie"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
    [__("Staatskunst"), 4]

    [__("Handel"), 4]
    [__("Schlösserknacken"), 4]
  ]

professions.add new PSPL_GHA()




