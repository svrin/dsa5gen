###
  Krieger & Ritter
###

class PKRR
  name: __("Krieger & Ritter")

  groups: [
    __("Profession (profan)")
    __("Profession (military)")
    __("Krieger & Ritter")
  ]

  name_m: __("Krieger & Ritter")
  name_w: __("Kriegerin & Ritter")

  costs: 1000

  auto: [
    choice_from(20, __("Sprache"), __("Schrift"))

    __("Finte")
    __("Meisterparade")
    __("Wuchtschlag")
    choice_from(80, __("Kampfsonderfertigkeit"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]
    [__("Schwerter"), 7]
    choice_from(150, __("Kampftechnik"))

    [__("Körperbeherrschung"), 4]
    [__("Reiten"), 7]
    [__("Selbstbeherrschung"), 4]
    [__("Sinnesschärfe"), 4]

    [__("Etikette"), 7]
    [__("Menschenkenntnis"), 4]
    [__("Willenskraft"), 4]

    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Kriegskunst"), 4]
    [__("Sagen & Legenden"), 4]
  ]

  common: [
    __("Balance")
    __("Beidhändig")
    __("Eisern")
    __("Gefahrensinstinkt")
    __("Gutaussehend")
    __("Hohe Lebenskraft")
    __("Soziale Anpassungsfähigkeit")
    __("Verbesserte Regeneration (Lebensenergie)")
    __("Zäher Hund")

    __("Arroganz")
    __("Eitelkeit")

    __("MU")
    __("IN")
    __("KK")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blutrausch")
    __("Fettleibig")
    __("Schlechte Regneration (Lebensenergie)")
  ]

professions.add new PKRR()



