###
  Landarbeiter
###

class PLND
  name: __("Landarbeiter")

  groups: [
    __("Profession (profan)")
    __("Profession (military)")
    __("Landarbeiter")
  ]

  name_m: __("Bauer")
  name_w: __("Bäuerin")

  costs: 800

  auto: [
    add_pool(5, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]
    [__("Hiebwaffen"), 4]
    [__("Stangenwaffen"), 4]

    [__("Körperbeherrschung"), 4]
    [__("Sinnesschärfe"), 4]
    [__("Tanzen"), 4]
    [__("Zechen"), 4]

    [__("Menschenkenntnis"), 4]

    [__("Fährtensuchen"), 4]
    [__("Fischen & Angeln"), 4]
    [__("Orientierung"), 4]
    [__("Pflanzenkunde"), 4]
    [__("Tierkunde"), 4]
    [__("Wildnisleben"), 4]

    [__("Götter & Kulte"), 4]
    [__("Rechen"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Fahrzeuge"), 4]
    [__("Heilkunde Krankheiten"), 4]
    [__("Heilkunde Wunden"), 4]
    [__("Holzbearbeitung"), 4]
    [__("Kochen & Backen"), 4]
    [__("Lederbearbeitung"), 4]
    [__("Stoffbearbeitung"), 4]
  ]

  common: [
    __("Begabung in Naturtalenten")

    __("Schlechte Eigenschaft (Aberglaube)")
    __("Schlechte Eigenschaft (Vorurteile)")

    __("KO")
    __("KK")
  ]

  uncommon: [
    __("Begabung in Wissenstalenten")

    __("Blind")
    __("Schlechte Eigenschaft (Krankhafte Reinlichkeit)")
    __("Schlechte Eigenschaft (Platzangst)")
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

professions.add new PLND()



