###
  Künstler
###

class PKUE_MAL extends PKUE
  name: __("Künstler/Maler")

  name_m: __("Maler")
  name_w: __("Malerin")

  costs: 495

  auto: [
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
    [__("Malen & Zeichnen"), 10]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
  ]

professions.add new PKUE_MAL()

