###
  Auelfen

  @version: US25001
  @page: 119
###

require ["data/culture/elfisch"], (C) ->
  cultures.add _.extend C,
    name: __("Auelfen")

    speech: [
      [__("Isdira")]
      [__("Isdira (auelfischer Dialekt)")]
    ]

    common: [
      __("Begabung in Handwerkstalenten")
      __("Magische Einstimmung (Wesen der Auen)")
      __("Waffenbegabung")

      __("Artefaktgebunden (Instrument)")
      __("Persönlichkeitsschwäche (Arroganz)")
      __("Persönlichkeitsschwäche (Vorurteile)")
      __("Persönlichkeitsschwäche (Weltfremd)")
      __("Prinzipientreue (Elfische Weitsicht)")
      __("Schlechte Eigenschaft (Neugier)")
    ]

    ultra: [
      [__("Betören"), 1]
      [__("Boote & Schiffe"), 1]
      [__("Fährtensuchen"), 1]
      [__("Fischen & Angeln"), 2]
      [__("Körperbeherrschung"), 2]
      [__("Musizieren"), 2]
      [__("Orientierung"), 1]
      [__("Pflanzenkunde"), 1]
      [__("Schwimmen"), 2]
      [__("Singen"), 2]
      [__("Sinnesschärfe"), 1]
      [__("Tanzen"), 0]
      [__("Tierkunde"), 1]
      [__("Verbergen"), 1]
      [__("Wildnisleben"), 1]
    ]

    uncommon: [
      __("Begabung in Wissenstalenten")

      __("Schlechte Eigenschaft (Goldgier)")
      __("Schlechte Eigenschaft (Rachsucht)")
      __("Unfähig in Körpertalenten")
      __("Unfähig in Naturtalenten")

      __("Alchimie")
      __("Brett- & Glücksspiel")
      __("Fahrzeuge")
      __("Rechtskunde")
      __("Schlösserknacken")
      __("Zechen")
    ]



