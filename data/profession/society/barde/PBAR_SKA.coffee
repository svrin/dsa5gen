###
  Barde
###

class PBAR_SKA extends PBAR
  name: __("Barde/Skalde")

  name_m: __("Skalde")
  name_w: __("Skaldin")

  costs: 850

  auto: [
    add_pool(25, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Singen"), 7]
    [__("Tanzen"), 4]
    [__("Verbergen"), 4]

    [__("Bekehren & Überzeugen"), 4]
    [__("Betören"), 4]
    [__("Etikette"), 4]
    [__("Gassenwissen"), 4]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 7]
    [__("Verkleiden"), 4]

    [__("Wildnisleben"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 7]
    [__("Staatskunst"), 4]

    [__("Heilkunde Seele"), 4]
    [__("Holzbearbeitung"), 4]
    [__("Musizieren"), 7]
  ]

  cultures:
    common: [
      __("Thorwaler")
    ]

professions.add new PBAR_SKA()

