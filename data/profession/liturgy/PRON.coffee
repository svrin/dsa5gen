###
  Rondrageweihter
###

class PRON
  name: __("Zwölfgötterkult/Rondrageweihter")

  groups: [
    __("Profession (liturgy)")
    __("Geweihter (Zwölfgötterkult)")
    __("Geweihter (Rondra)")
  ]

  name_m: __("Rondrageweihter")
  name_w: __("Rondrageweihte")

  costs: 1000

  required: [
    [__("Geweihter"), 1]
  ]

  auto: [
    [__("Tradition"), __("Zwölfgötterkult")]
    [__("Kirche"), __("Rondra")]

    add_pool(35, __("Sprache"), __("Schrift"))
    [__("Behinderungsgewöhnung"), 1]
    __("Finte")
    __("Wuchtschlag")

    [__("Dolche"), 4]
    [__("Raufen"), 4]
    [__("Schwerter"), 10]
    [__("Zweihandschwerter"), 7]
    [__("Hiebwaffen"), 4]
    [__("Schilde"), 4]

    [__("Körperbeherrschung"), 4]
    [__("Reiten"), 4]
    [__("Selbstbeherrschung"), 4]

    [__("Bekehren & Überzeugen"), 4]
    [__("Etikette"), 4]
    [__("Willenskraft"), 4]

    [__("Götter & Kulte"), 7]
    [__("Kriegskunst"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]

    [__("12 Segnungen"), 7]
    [__("Ehrenhafter Zweikampf"), 4]
    [__("Zuversicht"), 7]
  ]

  common: [
    __("Adlig")
    __("Eisern")
    __("Herausragende Eigenschaft (MU)")
    __("Herausragende Eigenschaft (GE)")
    __("Herausragende Eigenschaft (KK)")
    __("Kampfrausch")
    __("Verbesserte Regeneration (Lebensenergie)")
    __("Waffenbegabung")
    __("Zäher Hund")

    __("Prinzipientreue")
    __("Schlechte Eigenschaft (Arroganz)")
    __("Verpflichtungen")

    __("MU")
    __("CH")
    __("GE")
    __("KK")
  ]

  uncommon: [
    __("Schlechte Regeneration (Lebensenergie)")

    __("Glasknochen")
    __("Zerbrechlich")
  ]

professions.add new PRON()



