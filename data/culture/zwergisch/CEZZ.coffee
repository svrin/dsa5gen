###
  Erzzwerge

  @version: US25001
  @page: 124
###

require ["data/culture/zwergisch"], (C) ->
  cultures.add _.extend C,
    name: __("Erzzwerge")

    speech: [
      [__("Rogolan")]
      [__("Rogolan (erzzwergischer Dialekt)")]
    ]

    common: [
      __("Begabung in Handwerkstalenten")
      __("Begabung in Wissenstalenten")

      __("Angst vor ... (Höhe)")
      __("Angst vor ... (dem Meer)")
      __("Persönlichkeitsschwäche (Arroganz)")
      __("Persönlichkeitsschwäche (Vorurteile)")
      __("Schlechte Eigenschaft (Geiz)")
      __("Schlechte Eigenschaft (Goldgier)")
    ]

    ultra: [
      [__("Geschichtswissen"), 2]
      [__("Götter & Kulte"), 2]
      [__("Mechanik"), 2]
      [__("Metallbearbeitung"), 1]
      [__("Orientierung"), 0]
      [__("Rechnen"), 2]
      [__("Rechtskunde"), 1]
      [__("Sagen & Legenden"), 2]
      [__("Selbstbeherrschung"), 1]
      [__("Steinbearbeitung"), 1]
      [__("Verbergen"), 2]
      [__("Zechen"), 1]
    ]

    uncommon: [
      __("Soziale Anpassungsfähigkeit")

      __("Angst vor ... (Dunkelheit)")
      __("Angst vor ... (engen Räumen)")
      __("Nachtblind")
      __("Schlechte Eigenschaft (Neugier)")

      __("Betören")
      __("Boote & Schiffe")
      __("Fahrzeuge")
      __("Fischen & Angeln")
      __("Fliegen")
      __("Gaukeleien")
      __("Reiten")
      __("Schwimmen")

      __("Gladiator")
      __("Ritter")
      __("Stammeskrieger")
    ]

    professions: [
      __("Profession (profan)")

      __("Magier")
    ]
