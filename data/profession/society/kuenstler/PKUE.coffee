###
  Künstler
###

class PKUE
  name: __("Künstler")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Künstler")
  ]

  name_m: __("Künstler")
  name_w: __("Künstlerin")

  costs: 450

  auto: [
    [__("Dolche"), 4]

    [__("Sinnesschärfe"), 4]
    [__("Tanzen"), 4]

    [__("Betören"), 4]
    [__("Etikette"), 7]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 4]
    [__("Willenskraft"), 4]

    [__("Brett- & Glücksspiel"), 4]
    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
  ]

  common: [
    __("Begabung in Handwerkstalenten")
    __("Begabung in Wissenstalenten")

    __("Schlechte Eigenschaft (Arroganz)")
    __("Schlechte Eigenschaft (Eitelkeit)")
    __("Schlechte Eigenschaft (Größenwahn)")
    __("Schlechte Eigenschaft (Neugier)")

    __("IN")
    __("CH")
    __("FF")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blind")
    __("Blutrausch")
    __("Farbenblind")
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

professions.add new PKUE()



