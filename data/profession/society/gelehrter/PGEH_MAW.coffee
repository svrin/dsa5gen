###
  Gelehrter
###

class PGEH_MAW extends PGEH
  name: __("Gelehrter/Mawdli")

  name_m: __("Mawdli")
  name_w: __("Mawdli")

  costs: 650

  auto: [
    add_pool(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Bekehren & Überzeugen"), 7]
    [__("Etikette"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 4]
    [__("Willenskraft"), 4]

    [__("Brett- & Glücksspiel"), 4]
    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 10]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 10]
    [__("Sagen & Legenden"), 4]
    [__("Staatskunst"), 4]

    [__("Malen & Zeichnen"), 4]
  ]

  cultures:
    common: [
      __("Novadis")
    ]

professions.add new PGEH_MAW()

