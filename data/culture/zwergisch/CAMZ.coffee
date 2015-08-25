###
  Ambosszwerge

  @version: US25001
  @page: 122
###

require ["data/culture/zwergisch"], (C) ->
  cultures.add _.extend C,
    name: __("Ambosszwerge")

    speech: [
      [__("Rogolan")]
      [__("Rogolan (ambosszwergischer Dialekt)")]
    ]

    common: [
      __("Begabung in Handwerkstalenten")
      __("Verbesserte Regeneration (Lebensenergie)")
      __("Waffenbegabung")
      __("Zäher Hund")

      __("Angst vor ... (dem Meer)")
      __("Persönlichkeitsschwächen (Arroganz)")
      __("Persönlichkeitsschwächen (Vorurteile)")
      __("Prinzipientreue (zwergischer Ehrenkodex)")
      __("Schlechte Eigenschaften (Geiz)")
      __("Schlechte Eigenschaften (Goldgier)")
    ]

    ultra: [
      [__("Einschüchtern"), 1]
      [__("Geschichtswissen"), 1]
      [__("Kraftakt"), 2]
      [__("Kriegskunst"), 2]
      [__("Mechanik"), 1]
      [__("Metallbearbeitung"), 2]
      [__("Orientierung"), 1]
      [__("Rechnen"), 0]
      [__("Sagen & Legenden"), 1]
      [__("Selbstbeherrschung"), 0]
      [__("Steinbearbeitung"), 2]
      [__("Verbergen"), 1]
      [__("Zechen"), 2]
    ]

    uncommon: [
      __("Soziale Anpassungsfähigkeit")

      __("Angst vor ... (Dunkelheit)")
      __("Angst vor ... (engen Räumen)")
      __("Nachtblind")
      __("Persönlichkeitsschwächen (Eitelkeit)")

      __("Betören")
      __("Boote & Schiffe")
      __("Fischen & Angeln")
      __("Fliegen")
      __("Reiten")
      __("Schwimmen")
      __("Sternkunde")

      __("Gladiator")
      __("Ritter")
      __("Stammeskrieger")
    ]

    professions: [
      __("Profession (profan)")

      __("Magier")

      __("Geweihter (Rondra)")
    ]