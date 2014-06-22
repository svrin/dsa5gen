###
  Gelehrter
###

class PGEH_VLK extends PGEH
  name: __("Gelehrter/Völkerkundler")

  name_m: __("Völkerkundler")
  name_w: __("Völkerkundlerin")

  costs: 440

  auto: [
    choice_from(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Etikette"), 4]
    [__("Überreden"), 4]

    [__("Geographie"), 7]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 10]

    [__("Malen & Zeichnen"), 4]
  ]

professions.add new PGEH_VLK()

class PGEH_SLK extends PGEH_VLK
  name: __("Gelehrter/Sagenkundler")

  name_m: __("Sagenkundler")
  name_w: __("Sagenkundlerin")

professions.add new PGEH_SLK()

