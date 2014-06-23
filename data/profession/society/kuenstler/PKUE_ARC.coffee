###
  Künstler
###

class PKUE_ARC extends PKUE
  name: __("Künstler/Architekt")

  name_m: __("Architekt")
  name_w: __("Architektin")

  costs: 500

  auto: [
    add_pool(20, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

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
    [__("Rechnen"), 10]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
  ]

professions.add new PKUE_ARC()

