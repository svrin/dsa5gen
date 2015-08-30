###
  Fjarninger

  @version: US25001
  @page: 101
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Fjarninger")

    social: [__("Adel")]

    speech: [
      [__("Fjarningisch")]
    ]

    lettering: []

    common: [
      __("Entfernungssinn")
      __("Kälteresistenz")
      __("Richtungssinn")
      __("Verbesserte Regeneration (Lebensenergie)")
      __("Zäher Hund")

      __("Angst vor ... (dem Meer)")
      __("Blutrausch")
      __("Hitzeempfindlichkeit")
      __("Schlechte Eigenschaft (Aberglaube)")
      __("Schlechte Eigenschaft (Jähzorn)")
      __("Unfähig in Gesellschaftstalenten")
    ]

    ultra: [
      [__("Einschüchtern"), 2]
      [__("Fährtensuchen"), 1]
      [__("Holzbearbeitung"), 0]
      [__("Klettern"), 0]
      [__("Körperbeherrschung"), 1]
      [__("Kraftakt"), 2]
      [__("Metallbearbeitung"), 1]
      [__("Orientierung"), 2]
      [__("Selbstbeherrschung"), 1]
      [__("Steinbearbeitung"), 1]
      [__("Tierkunde"), 0]
      [__("Wildnisleben"), 2]
    ]

    uncommon: [
      __("Unscheinbar")
      __("Hitzeresistenz")
      __("Soziale Anpassungsfähigkeit")

      __("Angst vor ... (Dunkelheit)")
      __("Angst vor ... (engen Räumen)")
      __("Angst vor ... (Höhe)")
      __("Fettleibig")
      __("Kälteempfindlich")
      __("Krankheitsanfällig")
      __("Nachtblind")
      __("Persönlichkeitsschwäche (Eitelkeit)")
      __("Zerbrechlich")

      __("Betören")
      __("Boote & Schiffe")
      __("Etikette")
      __("Fahrzeuge")
      __("Fliegen")
      __("Gassenwissen")
      __("Reiten")
      __("Schlösserknacken")
    ]

    professions: [
      __("Händler")
      __("Heiler")
      __("Jäger")
      __("Söldner")
      __("Stammeskrieger")
    ]
