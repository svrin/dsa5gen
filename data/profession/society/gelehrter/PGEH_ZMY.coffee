###
  Gelehrter
###

class PGEH_ZMY extends PGEH
  name: __("Gelehrter/Zahlenmystiker")

  name_m: __("Zahlenmystiker")
  name_w: __("Zahlenmystikerin")

  costs: 445

  auto: [
    choice_from(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Etikette"), 4]
    [__("Überreden"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Mechanik"), 4]
    [__("Rechnen"), 7]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 7]
    [__("Sternkunde"), 4]

    [__("Malen & Zeichnen"), 4]
  ]

  cultures:
    common: [
      __("Aranien")
      __("Tulamidenlande")
      __("Novadis")
      __("Erzzwerge")
    ]

professions.add new PGEH_ZMY()

