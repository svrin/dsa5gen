###
  Gelehrter
###

class PGEH_RET extends PGEH
  name: __("Gelehrter/Rechtsgelehrter")

  name_m: __("Rechtsgelehrter")
  name_w: __("Rechtsgelehrte")

  costs: 560

  auto: [
    choice_from(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Etikette"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 7]
    [__("Willenskraft"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 10]
    [__("Sagen & Legenden"), 4]
    [__("Staatskunst"), 4]

    [__("Malen & Zeichnen"), 4]
  ]

professions.add new PGEH_RET()

