###
  Künstler
###

class PKUE_FEC extends PKUE
  name: __("Künstler/Fechtlehrer")

  name_m: __("Fechtlehrer")
  name_w: __("Fechtlehrerin")

  costs: 765

  auto: [
    [__("Dolche"), 4]
    [__("Fechtwaffen"), 10]
    [__("Schwerter"), 7]

    [__("Körperbeherrschung"), 7]
    [__("Sinnesschärfe"), 4]
    [__("Tanzen"), 4]

    [__("Betören"), 4]
    [__("Etikette"), 7]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 4]
    [__("Willenskraft"), 4]

    [__("Brett- & Glücksspiel"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
  ]

professions.add new PKUE_FEC()

