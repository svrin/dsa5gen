###
  Mittelreicher

  @version: US25001
  @page: 106
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Mittelreicher")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Garethi")]
    ]

    lettering: [
      __("Kusliker Zeichen")
    ]

    common: [
      __("Glück")

      __("Schlechte Eigenschaften (Aberglaube)")
      __("Persönlichkeitsschwächen (Vorurteile)")
    ]

    ultra: [
      [__("Holzbearbeitung"), 1]
      [__("Metallbearbeitung"), 1]
      [__("Pflanzenkunde"), 1]
      [__("Stoffbearbeitung"), 1]
      [__("Tierkunde"), 1]
    ]

    uncommon: [
      __("Hitzeresistenz")
      __("Kälteresistenz")

      __("Fliegen")

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
