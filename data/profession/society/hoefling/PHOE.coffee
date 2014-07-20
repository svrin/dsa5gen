###
  Höfling
###

class PHOE
  name: __("Höfling")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Höfling")
  ]

  name_m: __("Höfling")
  name_w: __("Höfling")

  costs: 750

  auto: [
    add_pool(15, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]
    [__("Schwerter"), 4]
    [__("Bögen"), 4]

    [__("Reiten"), 4]
    [__("Verbergen"), 4]
    [__("Sinnesschärfe"), 4]
    [__("Tanzen"), 4]
    [__("Zechen"), 4]

    [__("Bekehren & Überzeugen"), 4]
    [__("Betören"), 4]
    [__("Etikette"), 7]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 4]
    [__("Willenskraft"), 4]

    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
    [__("Staatskunst"), 7]
  ]

  common: [
    __("Begabung in Gesellschaftstalenten")
    __("Gefahreninstinkt")
    __("Giftresistenz")
    __("Gutausehend")

    __("Schlechte Eigenschaft (Arroganz)")
    __("Schlechte Eigenschaft (Eitelkeit)")
    __("Schlechte Eigenschaft (Geiz)")
    __("Schlechte Eigenschaft (Goldgier)")
    __("Schlechte Eigenschaft (Jähzorn)")
    __("Schlechte Eigenschaft (Krankhafte Reinlichkeit)")
    __("Schlechte Eigenschaft (Neid)")
    __("Schlechte Eigenschaft (Rachsucht)")

    __("KL")
    __("IN")
    __("CH")
  ]

  uncommon: [
    __("Begabung in Handwerkstalenten")
    __("Kampfrausch")

    __("Blutrausch")
    __("Unfähig in Gesellschaftstalenten")
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
      __("Zwerge")
    ]

professions.add new PHOE()



