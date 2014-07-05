###
  Söldner & Soldat
###

class PSOL
  name: __("Söldner & Soldat/Soldat")

  groups: [
    __("Profession (profan)")
    __("Profession (military)")
    __("Söldner & Soldat")
  ]

  name_m: __("Soldat")
  name_w: __("Soldatin")

  costs: 800

  required:
    GE: 11
    KK: 13

  auto: [
    add_pool(20, __("Sprache"), __("Schrift"))

    [__("Behinderungsgewöhnung"), 1]
    __("Finte")
    __("Wuchtschlag")

    [__("Raufen"), 7]
    [__("Dolche"), 4]
    [__("Wurfwaffen"), 4]
    add_pool(120, __("Kampftechniken"))

    [__("Körperbeherrschung"), 4]
    [__("Selbstbeherrschung"), 4]
    [__("Zechen"), 7]

    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 4]

    [__("Orientierung"), 4]
    [__("Wildnisleben"), 4]

    [__("Götter & Kulte"), 4]
    [__("Kriegskunst"), 7]
    [__("Sagen & Legenden"), 4]

    [__("Heilkunde Wunden"), 4]
  ]

  common: [
    __("Eisern")
    __("Gefahrensinstinkt")
    __("Kampfrausch")
    __("Hohe Lebenskraft")
    __("Richtungssinn")
    __("Verbesserte Regeneration (Lebensenergie)")

    __("Aberglaube")
    __("Jähzorn")

    __("GE")
    __("KK")
  ]

  uncommon: [
    __("Glasknochen")
    __("Lahm")
    __("Schlechte Regneration (Lebensenergie)")
  ]

  cultures:
    uncommon: [
      __("Ferkinas")
      __("Fjarninger")
      __("Gjalsker")
      __("Mohas")
      __("Novadis")
      __("Trollzacker")
      __("Elfen")
    ]

professions.add new PSOL()



