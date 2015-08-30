###
  Firnelfen

  @version: US25001
  @page: 120
###

require ["data/culture/elfisch"], (C) ->
  cultures.add _.extend C,
    name: __("Firnelfen")

    speech: [
      [__("Isdira")]
      [__("Isdira (firnelfischer Dialekt)")]
    ]

    common: [
      __("Begabung in Körpertalenten")
      __("Begabung in Naturtalenten")
      __("Kälteresistenz")
      __("Magische Einstimmung (Wesen der Eises)")
      __("Richtungssinn")
      __("Waffenbegabung")

      __("Artefaktgebunden (Instrument)")
      __("Persönlichkeitsschwäche (Arroganz)")
      __("Persönlichkeitsschwäche (Vorurteile)")
      __("Persönlichkeitsschwäche (Weltfremd)")
      __("Prinzipientreue (Elfische Weitsicht)")
      __("Unfähig in Wissenstalenten")
    ]

    ultra: [
      [__("Fährtensuchen"), 2]
      [__("Fesseln"), 0]
      [__("Fischen & Angeln"), 1]
      [__("Klettern"), 1]
      [__("Körperbeherrschung"), 2]
      [__("Musizieren"), 2]
      [__("Orientierung"), 2]
      [__("Pflanzenkunde"), 0]
      [__("Selbstbeherrschung"), 1]
      [__("Singen"), 2]
      [__("Sinnesschärfe"), 2]
      [__("Tanzen"), 0]
      [__("Tierkunde"), 2]
      [__("Verbergen"), 2]
      [__("Wildnisleben"), 2]
    ]

    uncommon: [
      __("Begabung in Wissenstalenten")
      __("Soziale Anpassungsfähigkeit")

      __("Angst vor ... (Dunkelheit)")
      __("Angst vor ... (engen Räumen)")
      __("Kälteempfindlich")
      __("Schlechte Eigenschaft (Goldgier)")
      __("Schlechte Eigenschaft (Rachsucht)")
      __("Unfähig in Körpertalenten")
      __("Unfähig in Naturtalenten")

      __("Alchimie")
      __("Brett- & Glücksspiel")
      __("Fahrzeuge")
      __("Fliegen")
      __("Rechtskunde")
      __("Schlösserknacken")
      __("Zechen")
    ]



