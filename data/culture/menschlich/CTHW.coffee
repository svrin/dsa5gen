###
  Thorwaler

  @version: US25001
  @page: 116
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Thorwaler")

    social: [__("Adel")]

    speech: [
      [__("Throwalsch")]
      [__("Throwalsch (Throwal-Dialekt)")]
      [__("Throwalsch (Premer-Dialekt)")]
      [__("Throwalsch (Olporter-Dialekt)")]
      [__("Throwalsch (Waskirer Hochland-Dialekt)")]
      [__("Throwalsch (Dialekt der Olportsteine)")]
    ]

    lettering: [
      __("Thorwalsche Runen")
      __("Kusliker Zeichen")
    ]

    common: [
      __("Entfernungssinn")
      __("Glück")
      __("Richtungssinn")
      __("Verbesserte Regeneration (Lebensenergie)")
      __("Zäher Hund")

      __("Blutrausch")
      __("Schlechte Eigenschaften (Aberglaube)")
      __("Schlechte Eigenschaften (Neugier)")
      __("Schlechte Eigenschaften (Rachsucht)")
      __("Persönlichkeitsschwächen (Vorurteile)")
  ]

    ultra: [
      [__("Boote & Schiffe"), 2]
      [__("Einschüchtern"), 1]
      [__("Fischen & Angeln"), 2]
      [__("Geographie"), 1]
      [__("Holzbearbeitung"), 2]
      [__("Kraftakt"), 2]
      [__("Orientierung"), 1]
      [__("Sagen & Legenden"), 1]
      [__("Selbstbeherrschung"), 0]
      [__("Steinbearbeitung"), 0]
      [__("Sternkunde"), 0]
      [__("Zechen"), 2]
    ]

    uncommon: [
      __("Soziale Anpassungsfähigkeit")

      __("Angst vor ... (dem Meer)")

      __("Etikette")
      __("Fliegen")
      __("Lebensmittelbearbeitung")

      __("Gladiator")
      __("Ritter")
      __("Stammeskrieger")
    ]

    professions: [
      __("Profession (profan)")

      __("Hexe")
      __("Magier")
    ]
