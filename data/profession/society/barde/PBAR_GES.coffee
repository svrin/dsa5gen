###
  Barde
###

class PBAR_GES extends PBAR
  name: __("Barde/Geschichtenerzähler")

  name_m: __("Geschichtenerzähler")
  name_w: __("Geschichtenerzählerin")

  costs: 850

  auto: [
    choice_from(25, __("Sprache"), __("Schrift"))

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
    ]

professions.add new PBAR_GES()

