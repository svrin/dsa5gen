###
  Waldelfen

  @version: US25001
  @page: 121
###

require ["data/culture/elfisch"], (C) ->
  cultures.add _.extend C,
    name: __("Waldelfen")

    speech: [
      [__("Isdira")]
      [__("Isdira (waldelfischer Dialekt)")]
    ]

    common: [
      __("Begabung in Körpertalenten")
      __("Begabung in Naturtalenten")
      __("Magische Einstimmung (Wesen des Waldes)")
      __("Waffenbegabung")

      __("Angst vor ... (engen Räumen)")
      __("Artefaktgebunden (Instrument)")
      __("Körpergebundene Kraft")
      __("Persönlichkeitsschwächen (Arroganz)")
      __("Persönlichkeitsschwächen (Vorurteile)")
      __("Persönlichkeitsschwächen (Weltfremd)")
      __("Prinzipientreue (Elfische Weitsicht)")
      __("Unfähig in Wissenstalenten")
    ]

    ultra: [
      [__("Fährtensuchen"), 2]
      [__("Klettern"), 1]
      [__("Körperbeherrschung"), 2]
      [__("Magiekunde"), 0]
      [__("Musizieren"), 2]
      [__("Orientierung"), 1]
      [__("Pflanzenkunde"), 2]
      [__("Singen"), 2]
      [__("Sinnesschärfe"), 1]
      [__("Tanzen"), 0]
      [__("Tierkunde"), 2]
      [__("Verbergen"), 2]
      [__("Wildnisleben"), 1]
    ]

    uncommon: [
      __("Begabung in Wissenstalenten")
      __("Soziale Anpassungsfähigkeit")

      __("Schlechte Eigenschaften (Goldgier)")
      __("Schlechte Eigenschaften (Jähzorn)")
      __("Schlechte Eigenschaften (Rachsucht)")
      __("Unfähig in Körpertalenten")
      __("Unfähig in Naturtalenten")

      __("Alchimie")
      __("Boote & Schiffe")
      __("Brett- & Glücksspiel")
      __("Fahrzeuge")
      __("Rechtskunde")
      __("Schlösserknacken")
      __("Zechen")
    ]



