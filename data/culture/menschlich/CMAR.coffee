###
  Maraskaner

  @version: US25001
  @page: 103
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Maraskaner")

    social: [__("Adel")]

    speech: [
      [__("Garethi")]
      [__("Garethi (Maraskani)")]
      [__("Tylamidya")]
      [__("Tylamidya (Maraskani-Tylamidya)")]
    ]

    lettering: [
      __("Schrift (Kusliker Zeichen)")
      __("Schrift (Tulamidya)")
    ]

    common: [
      __("Giftresistenz")
      __("Hitzeresistenz")
      __("Krankheitsresistenz")
      __("Richtungssinn")
      __("Soziale Anpassungsfähigkeit")

      __("Persönlichkeitsschwächen (Arroganz)")
      __("Persönlichkeitsschwächen (Vorurteile)")
      __("Schlechte Eigenschaften (Neugier)")
  ]

    ultra: [
      [__("Götter & Kulte"), 1]
      [__("Heilkunde Gift"), 2]
      [__("Orientierung"), 1]
      [__("Pflanzenkunde"), 2]
      [__("Tierkunde"), 2]
      [__("Verbergen"), 1]
      [__("Wildnisleben"), 1]
    ]

    uncommon: [
      __("Kälteresistenz")

      __("Farbenblind")
      __("Angst vor ... (Insekten)")
      __("Schlechte Eigenschaften (Jähzorn)")

      __("Fahrzeuge")
      __("Fliegen")


      __("Gladiator")
      __("Ritter")
      __("Stammeskrieger")
    ]

    professions: [
      __("Profession (profan)")

      __("Hexe")
      __("Magier")
    ]
