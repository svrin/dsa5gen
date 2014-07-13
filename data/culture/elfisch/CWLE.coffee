###
  Waldelfen
###

require ["data/culture/elfisch"], (C) ->
  cultures.add _.extend C,
    name: __("Waldelfen")

    speech: [
      [__("Isdira")]
      [__("Isdira (waldelfischer Dialekt)")]
    ]

    knowledge: [
      [__("Kulturkunde (Waldelfen)")]
    ]

    common: [
      __("Begabung in Körpertalenten")
      __("Begabung in Naturtalenten")
      __("Begabung in Kampftechniken")
      __("Gefahreninstinkt")
      __("Magische Einstimmung (Wesen des Waldes)")
      __("Verbundenheit (Feen)")
      __("Verbundenheit (Tiere)")

      __("Artefaktgebunden (Instrument)")
      __("Körpergebundene Kraft")
      __("Magieblockade (KL)")
      __("Schlechte Eigenschaft (Arroganz)")
      __("Schlechte Eigenschaft (Raumangst)")
      __("Schlechte Eigenschaft (Vorurteile)")
      __("Schlechte Eigenschaft (Weltfremd)")
      __("Unfähig in Wissenstalenten")

      __("Betören")
      __("Fährtensuchen")
      __("Klettern")
      __("Körperbeherrschung")
      __("Magiekunde")
      __("Musizieren")
      __("Orientierung")
      __("Pflanzenkunde")
      __("Singen")
      __("Sinnesschärfe")
      __("Tanzen")
      __("Tierkunde")
      __("Verbergen")
      __("Wildnisleben")
    ]

    uncommon: [
      __("Begabung in Wissenstalenten")
      __("Soziale Anpassungsfähigkeit")

      __("Schlechte Eigenschaft (Goldgier)")
      __("Schlechte Eigenschaft (Jähzorn)")
      __("Schlechte Eigenschaft (Rachsucht)")
      __("Unfähig in Körpertalenten")
      __("Unfähig in Naturtalenten")

      __("Alchimie")
      __("Brett- & Glücksspiel")
      __("Fahrzeuge")
      __("Rechtskunde")
      __("Schlösserknacken")
      __("Seefahrt")
      __("Staatskunst")
      __("Zechen")
    ]



