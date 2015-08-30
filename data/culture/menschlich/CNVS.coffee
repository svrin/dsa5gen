###
  Novadis

  @version: US25001
  @page: 113
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Novadis")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Tulamidya")]
      [__("Tulamidya (Khôm-Novadisch)")]
    ]

    lettering: [
      __("Schrift (Heilige Glyphen von Unau)")
    ]

    common: [
      __("Entfernungssinn")
      __("Hitzeresistenz")
      __("Richtungssinn")
      __("Schwer zu verzaubern")
      __("Zäher Hund")

      __("Angst vor ... (engen Räumen)")
      __("Angst vor ... (dem Meer)")
      __("Prinzipentreue (99 Gesetze)")
      __("Persönlichkeitsschwäche (Arroganz)")
      __("Persönlichkeitsschwäche (Vorurteile)")
      __("Schlechte Eigenschaft (Jähzorn)")
      __("Schlechte Eigenschaft (Rachsucht)")
    ]

    ultra: [
      [__("Einschüchtern"), 2]
      [__("Fährtensuchen"), 1]
      [__("Kriegskunst"), 0]
      [__("Orientierung"), 2]
      [__("Pflanzenkunde"), 0]
      [__("Rechtskunde"), 1]
      [__("Reiten"), 2]
      [__("Sinnesschärfe"), 0]
      [__("Tierkunde"), 1]
      [__("Wildnisleben"), 2]
    ]

    uncommon: [
      __("Hitzeempfindlich")
      __("Kälteresistenz")

      __("Fahrzeuge")
      __("Fischen & Angeln")
      __("Magiekunde")

      __("Gladiator")
      __("Ritter")
    ]

    professions: [
      __("Profession (profan)")

      __("Magier")
    ]
