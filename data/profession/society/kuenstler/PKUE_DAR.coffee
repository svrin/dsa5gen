###
  Künstler
###

class PKUE_DAR extends PKUE
  name: __("Künstler/Darsteller")

  name_m: __("Darsteller")
  name_w: __("Darstellerin")

  costs: 750

  auto: [
    add_pool(60, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Körperbeherrschung"), 4]
    [__("Sinnesschärfe"), 4]
    [__("Singen"), 4]
    [__("Tanzen"), 4]

    [__("Verkleiden"), 10]

    [__("Betören"), 4]
    [__("Etikette"), 7]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 10]
    [__("Willenskraft"), 4]

    [__("Brett- & Glücksspiel"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
  ]

professions.add new PKUE_DAR()

