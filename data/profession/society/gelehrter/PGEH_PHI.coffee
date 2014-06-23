###
  Gelehrter
###

class PGEH_PHI extends PGEH
  name: __("Gelehrter/Philosph")

  name_m: __("Philosph")
  name_w: __("Philosphin")

  costs: 665

  auto: [
    add_pool(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Bekehren & Überzeugen"), 4]
    [__("Etikette"), 4]
    [__("Überreden"), 7]
    [__("Willenskraft"), 7]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 10]
    [__("Magiekunde"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Heilkunde Seele"), 4]
    [__("Malen & Zeichnen"), 4]
  ]

professions.add new PGEH_PHI()

class PGEH_MPH extends PGEH_PHI
  name: __("Gelehrter/Metaphysiker")

  name_m: __("Metaphysiker")
  name_w: __("Metaphysikerin")

professions.add new PGEH_MPH()

