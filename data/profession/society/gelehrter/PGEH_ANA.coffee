###
  Gelehrter
###

class PGEH_ANA extends PGEH
  name: __("Gelehrter/Anatom")

  name_m: __("Anatom")
  name_w: __("Anatomin")

  costs: 605

  auto: [
    add_pool(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Selbstbeherrschung"), 4]

    [__("Etikette"), 4]
    [__("Überreden"), 4]

    [__("Pflanzenkunde"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Heilkunde Gift"), 4]
    [__("Heilkunde Krankheiten"), 4]
    [__("Heilkunde Wunden"), 7]
    [__("Malen & Zeichnen"), 7]
  ]

professions.add new PGEH_ANA()

