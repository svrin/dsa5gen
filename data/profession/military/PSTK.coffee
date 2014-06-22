###
  Stammeskrieger
###

class PSTK
  name: __("Stammeskrieger")

  groups: [
    __("Profession (profan)")
    __("Profession (military)")
    __("Stammeskrieger")
  ]

  name_m: __("Stammeskrieger")
  name_w: __("Stammeskriegerin")

  costs: 1000

  required:
    IN: 13
    GE: 11
    KK: 11

  auto: [
    choice_from(15, __("Sprache"), __("Schrift"))

    __("Aufmerksamkeit")
    __("Finte")
    __("Kampfreflexe")
    __("Wuchtschlag")
    choice_from(20, __("Kampfsonderfertigkeit"))

    [__("Raufen"), 7]
    choice_from(120, __("Kampftechnik"))

    [__("Körperbeherrschung"), 4]
    [__("Selbstbeherrschung"), 4]
    [__("Sinnesschärfe"), 7]
    [__("Verbergen"), 4]

    [__("Einschüchtern"), 4]

    [__("Fährtensuche"), 4]
    [__("Orientierung"), 4]
    [__("Pflanzenkunde"), 4]
    [__("Tierkunde"), 4]
    [__("Wildnisleben"), 4]

    [__("Götter & Kulte"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Heilkunde Wunden"), 4]
    [__("Holzbearbeitung"), 4]
    [__("Ledebearbeitung"), 4]
  ]

  common: [
    __("Eisern")
    __("Gefahrensinstinkt")
    __("Kampfrausch")
    __("Hohe Lebenskraft")
    __("Richtungssinn")
    __("Verbesserte Regeneration (Lebensenergie)")
    __("Zäher Hund")

    __("Aberglaube")
    __("Arroganz")
    __("Jähzorn")
    __("Rachsucht")
    __("Raumangst")
    __("Vorurteile")
    __("Blutrausch")
    __("Prinzipientreue")
    __("Verpflichtungen")

    __("MU")
    __("KO")
    __("KK")
  ]

  uncommon: [
    __("Begabung in Gesellschaftstalenten")
    __("Soziale Anpassungsfähigkeit")

    __("Behäbig")
    __("Fettleibig")
    __("Glasknochen")
    __("Schlechte Regneration (Lebensenergie)")
    __("Zerbrechlich")
  ]

  cultures:
    common: [
      __("Ferkinas")
      __("Fjarninger")
      __("Gjalsker")
      __("Mohas")
      __("Novadis")
      __("Trollzacker")
    ]

professions.add new PSTK()



