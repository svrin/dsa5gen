###
  Barde
###

class PBAR_HER extends PBAR
  name: __("Barde/Herold")

  name_m: __("Herold")
  name_w: __("Heroldin")

  costs: 865

  auto: [
    choice_from(25, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Singen"), 4]
    [__("Tanzen"), 4]
    [__("Verbergen"), 4]

    [__("Bekehren & Überzeugen"), 7]
    [__("Betören"), 4]
    [__("Etikette"), 4]
    [__("Gassenwissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 7]
    [__("Staatskunst"), 7]

    [__("Heilkunde Seele"), 4]
    [__("Holzbearbeitung"), 4]
    [__("Musizieren"), 4]
  ]

  cultures:
    uncommon: [
      __("Ferkinas")
      __("Fjarninger")
      __("Gjalsker")
      __("Mohas")
      __("Nivesen")
      __("Trollzacker")
      __("Elfen")
    ]

professions.add new PBAR_HER()

