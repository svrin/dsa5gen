###
  Norbarden

  @version: US25001
  @page: 110
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Norbarden")

    social: []

    speech: [
      [__("Alaani")]
      [__("Alaani (Gajka)")]
      [__("Alaani (Takellen)")]
    ]

    lettering: [
      __("Kusliker Zeichen")
    ]

    common: [
      __("Kälteresistenz")
      __("Richtungssinn")

      __("Angst vor ... (engen Räumen)")
      __("Angst vor ... (Höhe)")
      __("Schlechte Eigenschaft (Goldgier)")
      __("Schlechte Eigenschaft (Neugier)")
      __("Verpflichtungen")
  ]

    ultra: [
      [__("Fahrzeuge"), 2]
      [__("Geographie"), 2]
      [__("Handel"), 2]
      [__("Orientierung"), 1]
      [__("Überreden"), 1]
      [__("Wildnisleben"), 1]
    ]

    uncommon: [
      __("Hitzeresistenz")

      __("Prinzipentreue")
      __("Persönlichkeitsschwäche (Arroganz)")

      __("Fliegen")
      __("Boote & Schiffe")
    ]

    professions: [
      __("Händler")
      __("Heiler")
      __("Jäger")
      __("Söldner")
      __("Streuner")

      __("Hexe")
      __("Magier")

      __("Geweihter (Hesinde)")
      __("Geweihter (Phex)")
    ]
