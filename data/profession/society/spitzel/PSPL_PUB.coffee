###
  Spitzel
###

class PSPL_PUB extends PSPL
  name: __("Spitzel/Publizist")

  name_m: __("Publizist")
  name_w: __("Publizistin")

  costs: 1125

  auto: [
    add_pool(45, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Sinnesschärfe"), 7]
    [__("Taschendiebstahl"), 7]
    [__("Verbergen"), 10]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 7]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 10]
    [__("Verkleiden"), 7]
    [__("Willenskraft"), 7]

    [__("Orientierung"), 1]

    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Handel"), 4]
    [__("Schlösserknacken"), 4]
  ]

professions.add new PSPL_PUB()




