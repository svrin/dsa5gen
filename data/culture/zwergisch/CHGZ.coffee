###
  Hügelzwerge

  @version: US25001
  @page: 125
###

require ["data/culture/zwergisch"], (C) ->
  cultures.add _.extend C,
    name: __("Hügelzwerge")

    speech: [
      [__("Rogolan")]
      [__("Rogolan (hügelzwergischer Dialekt)")]
    ]

    common: [
      __("Begabung in Handwerkstalenten")
      __("Begabung in Gesellschaftstalenten")
      __("Soziale Anpassungsfähigkeit")

      __("Angst vor ... (dem Meer)")
      __("Schlechte Eigenschaften (Neugier)")
      __("Schlechte Eigenschaften (Goldgier)")
    ]

    ultra: [
      [__("Etikette"), 0]
      [__("Fahrzeuge"), 1]
      [__("Fischen & Angeln"), 1]
      [__("Lebensmittelbearbeitung"), 2]
      [__("Singen"), 1]
      [__("Tanzen"), 1]
      [__("Verbergen"), 2]
      [__("Zechen"), 1]
    ]

    uncommon: [
      __("Angst vor ... (Dunkelheit)")
      __("Angst vor ... (engen Räumen)")
      __("Blutrausch")
      __("Nachtblind")

      __("Einschüchtern")
      __("Fliegen")
      __("Reiten")
      __("Wildnisleben")

      __("Gladiator")
      __("Ritter")
      __("Stammeskrieger")
    ]

    professions: [
      __("Profession (profan)")

      __("Magier")

      __("Geweihter (Phex)")
    ]
