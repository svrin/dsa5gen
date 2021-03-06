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
    add_pool(15, __("Sprache"), __("Schrift"))

    __("Aufmerksamkeit")
    __("Finte")
    __("Kampfreflexe")
    __("Wuchtschlag")
    add_pool(20, __("Kampfsonderfertigkeiten"))

    [__("Raufen"), 7]
    add_pool(120, __("Kampftechniken"))

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

    __("Schlechte Eigenschaft (Aberglaube)")
    __("Schlechte Eigenschaft (Arroganz)")
    __("Schlechte Eigenschaft (Jähzorn)")
    __("Schlechte Eigenschaft (Rachsucht)")
    __("Schlechte Eigenschaft (Raumangst)")
    __("Schlechte Eigenschaft (Vorurteile)")
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



