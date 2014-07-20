###
  Gelehrter
###

class PGEH
  name: __("Gelehrter")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Gelehrter")
  ]

  name_m: __("Gelehrter")
  name_w: __("Gelehrte")

  costs: 350

  auto: [
    add_pool(80, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]

    [__("Etikette"), 4]
    [__("Überreden"), 4]

    [__("Geographie"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Malen & Zeichnen"), 4]
  ]

  common: [
    __("Begabung in Wissenstalenten")
    __("Theoretiker")

    __("Schlechte Eigenschaft (Arroganz)")
    __("Schlechte Eigenschaft (Neid)")
    __("Schlechte Eigenschaft (Neugier)")
    __("Schlechte Eigenschaft (Weltfremd)")
    __("Glasknochen")
    __("Unfähig in Körpertalenten")
    __("Unfähig in Gesellschaftstalenten")

    __("KL")
    __("FF")
  ]

  uncommon: [
    __("Begabung in Körpertalenten")
    __("Kampfrausch")

    __("Schlechte Eigenschaft (Aberglaube)")
    __("Blutrausch")
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

professions.add new PGEH()



