###
  Barde
###

class PBAR_HAI extends PBAR
  name: __("Barde/Haimamud")

  name_m: __("Haimamud")
  name_w: __("Haimamud")

  costs: 850

  auto: [
    add_pool(25, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Singen"), 1]
    [__("Tanzen"), 4]
    [__("Verbergen"), 4]

    [__("Bekehren & Überzeugen"), 4]
    [__("Betören"), 4]
    [__("Etikette"), 4]
    [__("Gassenwissen"), 7]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 7]
    [__("Verkleiden"), 4]

    [__("Wildnisleben"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 10]
    [__("Staatskunst"), 4]

    [__("Heilkunde Seele"), 4]
    [__("Holzbearbeitung"), 1]
    [__("Musizieren"), 4]
  ]

  cultures:
    common: [
      __("Aranien")
      __("Novadis")
      __("Tulamidenlande")
    ]

professions.add new PBAR_HAI()

