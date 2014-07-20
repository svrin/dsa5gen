###
  Liebesdiener
###

class PLIE
  name: __("Liebesdiener")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Liebesdiener")
  ]

  name_m: __("Lustknabe")
  name_w: __("Hure")

  costs: 850

  auto: [
    add_pool(25, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Körperbeherrschung"), 4]
    [__("Selbstbeherrschung"), 4]
    [__("Sinnesschärfe"), 4]
    [__("Tanzen"), 4]
    [__("Verbergen"), 4]
    [__("Zechen"), 4]

    [__("Betören"), 7]
    [__("Gassenwissen"), 7]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 4]
    [__("Verkleiden"), 4]
    [__("Willenskraft"), 4]

    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Handel"), 4]
    [__("Heilkunde Krankheiten"), 4]
    [__("Heilkunde Wunden"), 4]
    [__("Stoffbearbeitung"), 4]
  ]

  common: [
    __("Angenehmer Geruch")
    __("Begabung in Gesellschaftstalenten")
    __("Gutaussehend")
    __("Wohlklang")

    __("Schlechte Eigenschaft (Eitelkeit)")
    __("Schlechte Eigenschaft (Goldgier)")
    __("Kälteresitenz")
    __("Schlechte Eigenschaft (Krankhafte Reinlichkeit)")
    __("Soziale Anpassungsfähigkeit")

    __("CH")
    __("KO")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blutrausch")
    __("Hässlich")
    __("Schlechte Eigenschaft (Raumangst)")
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
      __("Zwerge")
    ]

professions.add new PLIE()



