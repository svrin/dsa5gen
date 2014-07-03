###
  Spitzel
###

class PSPL_MCH extends PSPL
  name: __("Spitzel/Meuchelmörder")

  name_m: __("Meuchelmörder")
  name_w: __("Meuchelmörderin")

  costs: 1185

  auto: [
    add_pool(45, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Klettern"), 7]
    [__("Körperbeherrschung"), 4]
    [__("Sinnesschärfe"), 7]
    [__("Taschendiebstahl"), 7]
    [__("Verbergen"), 10]

    [__("Einschüchtern"), 4]
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

professions.add new PSPL_MCH()




