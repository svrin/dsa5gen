###
  Gelehrter
###

class PGEH_MAT extends PGEH
  name: __("Gelehrter/Mathematicus")

  name_m: __("Mathematicus")
  name_w: __("Mathematica")

  costs: 425

  auto: [
    add_pool(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Etikette"), 4]
    [__("Überreden"), 4]

    [__("Brett- & Glücksspiel"), 4]
    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Mechanik"), 4]
    [__("Rechnen"), 10]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Malen & Zeichnen"), 4]
  ]

professions.add new PGEH_MAT()

