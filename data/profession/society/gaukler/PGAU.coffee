###
  Gaukler
###

class PGAU
  name: __("Gaukler")

  groups: [
    __("Profession (profan)")
    __("Profession (society)")
    __("Gaukler")
  ]

  name_m: __("Gaukler")
  name_w: __("Gauklerin")

  costs: 900

  auto: [
    add_pool(30, __("Sprache"), __("Schrift"))

    [__("Ausweichen"), 4]
    [__("Dolche"), 4]
    [__("Hiebwaffen"), 4]
    [__("Raufen"), 4]
    [__("Wurfwaffen"), 4]

    [__("Gaukeleien"), 7]
    [__("Klettern"), 4]
    [__("Körperbeherrschung"), 7]
    [__("Reiten"), 4]
    [__("Singen"), 4]
    [__("Tanzen"), 4]
    [__("Taschendiebstahl"), 4]
    [__("Verbergen"), 4]
    [__("Zechen"), 4]

    [__("Etikette"), 1]
    [__("Gassenwissen"), 4]
    [__("Menschenkenntnis"), 4]
    [__("Überreden"), 4]
    [__("Verkleiden"), 4]

    [__("Tierkunde"), 4]
    [__("Wildnisleben"), 4]

    [__("Geographie"), 4]
    [__("Götter & Kulte"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Fahrzeuge"), 4]
    [__("Malen & Zeichnen"), 4]
    [__("Musizieren"), 4]
  ]

  common: [
    __("Balance")
    __("Begabung in Körpertalenten")
    __("Entfernungssinn")
    __("Gutausehend")
    __("Schlangenmensch")
    __("Verbundenheit (Tiere)")
    __("Wohlklang")

    __("Schlechte Eigenschaft (Aberglaube)")
    __("Schlechte Eigenschaft (Eitelkeit)")
    __("Schlechte Eigenschaft (Neid)")
    __("Schlechte Eigenschaft (Neugier)")
    __("Schlechte Eigenschaft (Rachsucht)")

    __("MU")
    __("FF")
    __("GE")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blind")
    __("Blutrausch")
    __("Schlechte Eigenschaft (Höhenangst)")
    __("Nachtblind")
    __("Unfähig in Körpertalenten")
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

professions.add new PGAU()



