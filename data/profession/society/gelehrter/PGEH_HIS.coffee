###
  Gelehrter
###

class PGEH_HIS extends PGEH
  name: __("Gelehrter/Historiker")

  name_m: __("Historiker")
  name_w: __("Historikerin")

  costs: 545

  auto: [
    choice_from(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Etikette"), 4]
    [__("Überreden"), 4]

    [__("Geographie"), 7]
    [__("Geschichtswissen"), 10]
    [__("Götter & Kulte"), 7]
    [__("Magiekunde"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 7]
    [__("Staatskunst"), 4]

    [__("Malen & Zeichnen"), 4]
  ]

professions.add new PGEH_HIS()

