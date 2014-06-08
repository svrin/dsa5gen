###
  Barde
###

class PBAR
  name: __("Barde")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Barde")
  ]

  name_m: __("Barde")
  name_w: __("Bardin")

  costs: 850

  attributes: ["KL", "CH"]

  auto: [
    choice_from(25, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Singen"), 7]
    [__("Tanzen"), 4]
    [__("Verbergen"), 4]

    [__("Bekehren & Überzeugen"), 4]
    [__("Betören"), 4]
    [__("Etikette"), 4]
    [__("Gassenwissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 7]
    [__("Staatskunst"), 4]

    [__("Heilkunde Seele"), 4]
    [__("Holzbearbeitung"), 4]
    [__("Musizieren"), 7]
  ]

  common: [
    __("Gutaussehend")
    __("Soziale Anpassungsfähigkeit")
    __("Wohlklang")

    __("Arroganz")
    __("Eitelkeit")
    __("Neugier")
  ]

  uncommon: [
    __("Hässlich")
    __("Übler Geruch")
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

professions.add new PBAR()



