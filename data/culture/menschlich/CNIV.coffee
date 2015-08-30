###
  Nivesen

  @version: US25001
  @page: 109
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Nivesen")

    social: [__("Adel")]

    speech: [
      [__("Nujuka")]
    ]

    lettering: []

    common: [
      __("Kälteresistenz")
      __("Richtungssinn")

      __("Angst vor ... (engen Räumen)")
      __("Angst vor ... (Höhe)")
      __("Angst vor ... (Toten und Untoten)")
    ]

    ultra: [
      [__("Fährtensuchen"), 2]
      [__("Fahrzeuge"), 1]
      [__("Körperbeherrschung"), 0]
      [__("Orientierung"), 2]
      [__("Pflanzenkunde"), 1]
      [__("Sagen & Legenden"), 2]
      [__("Sinnesschärfe"), 1]
      [__("Tierkunde"), 2]
      [__("Verbergen"), 1]
      [__("Wildnisleben"), 2]
    ]

    uncommon: [
      __("Hitzeresistenz")
      __("Soziale Anpassungsfähigkeit")

      __("Fettleibig")
      __("Persönlichkeitsschwäche (Arroganz)")
      __("Schlechte Eigenschaft (Goldgier)")

      __("Boote & Schiffe")
      __("Einschüchtern")
      __("Etikette")
      __("Fliegen")
      __("Gassenwissen")
      __("Geschichtswissen")
      __("Kriegskunst")
      __("Reiten")
      __("Schlösserknacken")
    ]

    professions: [
      __("Handwerker")
      __("Heiler")
      __("Jäger")
      __("Landarbeiter")
      __("Räuber")
      __("Söldner")
      __("Streuner")
      __("Tierkundiger")

      __("Magiedilettant")
      __("Schamane")

      __("Hochschamane (Himmelswölfe)")
    ]
