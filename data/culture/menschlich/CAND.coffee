###
  Andergaster

  @version: US25001
  @page: 97
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Andergaster")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Garethi")]
      [__("Garethi (Andergastisch)")]
    ]

    lettering: [
      __("Kusliker Zeichen")
    ]

    common: [
      __("Richtungssinn")
      __("Zäher Hund")

      __("Persönlichkeitsschwächen (Vorurteile)")
      __("Persönlichkeitsschwächen (Weltfremd)")
      __("Schlechte Eigenschaft (Aberglaube)")
    ]

    ultra: [
      [__("Holzbearbeitung"), 2]
      [__("Orientierung"), 1]
      [__("Pflanzenkunde"), 1]
      [__("Sagen & Legenden"), 1]
      [__("Tierkunde"), 1]
      [__("Wildnisleben"), 2]
    ]

    uncommon: [
      __("Soziale Anpassungsfähigkeit")

      __("Krankheitsanfällig")

      __("Fliegen")
      __("Geographie")
      __("Geschichtswissen")
      __("Götter & Kulte")
      __("Mechanik")
      __("Rechnen")
      __("Rechtskunde")

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
