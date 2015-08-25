###
  Svellttaler

  @version: US25001
  @page: 115
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Svellttaler")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Garethi")]
    ]

    lettering: [
      __("Kusliker Zeichen")
    ]

    common: [
      __("Entfernungssinn")
      __("Richtungssinn")
      __("Zäher Hund")

      __("Angst vor ... (engen Räumen)")
      __("Schlechte Eigenschaften (Aberglaube)")
      __("Persönlichkeitsschwächen (Vorurteile)")
  ]

    ultra: [
      [__("Fährtensuchen"), 2]
      [__("Fahrzeuge"), 2]
      [__("Orientierung"), 1]
      [__("Pflanzenkunde"), 1]
      [__("Sagen & Legenden"), 1]
      [__("Tierkunde"), 1]
      [__("Wildnisleben"), 1]
    ]

    uncommon: [
      __("Hitzeresistenz")

      __("Krankheitsanfällig")

      __("Etikette")
      __("Fliegen")
      __("Geschichtswissen")

      __("Gladiator")
      __("Stammeskrieger")
    ]

    professions: [
      __("Profession (profan)")

      __("Hexe")
      __("Magier")

      __("Geweihter (Boron)")
      __("Geweihter (Hesinde)")
      __("Geweihter (Peraine)")
      __("Geweihter (Phex)")
      __("Geweihter (Praois)")
      __("Geweihter (Rondra)")
    ]
