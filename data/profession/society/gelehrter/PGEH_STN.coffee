###
  Gelehrter
###

class PGEH_STN extends PGEH
  name: __("Gelehrter/Sternkundiger")

  name_m: __("Sternkundiger")
  name_w: __("Sternkundige")

  costs: 515

  auto: [
    choice_from(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Etikette"), 4]
    [__("Überreden"), 4]

    [__("Orientierung"), 4]
    [__("Wildnisleben"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
    [__("Sternkunde"), 10]

    [__("Malen & Zeichnen"), 4]
  ]

professions.add new PGEH_STN()

