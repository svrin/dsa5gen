###
  Gelehrter
###

class PGEH_SPR extends PGEH
  name: __("Gelehrter/Sprachkundler")

  name_m: __("Sprachkundler")
  name_w: __("Sprachkundlerin")

  costs: 975

  auto: [
    choice_from(230, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Etikette"), 4]
    [__("Überreden"), 4]

    [__("Geographie"), 7]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Malen & Zeichnen"), 4]
  ]

professions.add new PGEH_SPR()

