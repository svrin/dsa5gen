###
  Firnelfen
###

require ["data/culture/elfisch"], (C) ->
  cultures.add _.extend C,
    name: __("Firnelfen")

    speech: [
      [__("Isdira")]
      [__("Isdira (firnelfischer Dialekt)")]
    ]

    knowledge: [
      [__("Kulturkunde (Firnelfen)")]
    ]

    common: [
      __("Begabung in Körpertalenten")
      __("Begabung in Naturtalenten")
      __("Begabung in Kampftechniken")
      __("Gefahreninstinkt")
      __("Magische Einstimmung (Wesen der Eises)")
      __("Richtungssinn")
      __("Verbundenheit (Tiere)")

      __("Artefaktgebunden (Instrument)")
      __("Magieblockade (KL)")
      __("Schlechte Eigenschaft (Arroganz)")
      __("Schlechte Eigenschaft (Vorurteile)")
      __("Schlechte Eigenschaft (Weltfremd)")
      __("Unfähig in Wissenstalenten")
      __("Wilde Magie")

      __("Fährtensuchen")
      __("Fesseln")
      __("Fischen & Angeln")
      __("Klettern")
      __("Körperbeherrschung")
      __("Musizieren")
      __("Orientierung")
      __("Pflanzenkunde")
      __("Selbstbeherrschung")
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

      __("Schlechte Eigenschaft (Dunkelangst)")
      __("Schlechte Eigenschaft (Goldgier)")
      __("Schlechte Eigenschaft (Platzangst)")
      __("Schlechte Eigenschaft (Rachsucht)")
      __("Schlechte Eigenschaft (Raumangst)")
      __("Unfähig in Körpertalenten")
      __("Unfähig in Naturtalenten")

      __("Alchimie")
      __("Brett- & Glücksspiel")
      __("Fahrzeuge")
      __("Fliegen")
      __("Rechtskunde")
      __("Schlösserknacken")
      __("Staatskunst")
      __("Zechen")
    ]



