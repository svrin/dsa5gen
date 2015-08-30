###
  Bornländer

  @version: US25001
  @page: 99
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Bornländer")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Garethi")]
      [__("Garethi (Bornländisch)")]
    ]

    lettering: [
      __("Schrift (Kusliker Zeichen)")
    ]

    common: [
      __("Kälteresistenz")
      __("Richtungssinn")
      __("Zäher Hund")

      __("Hitzeempfindlichkeit")
      __("Persönlichkeitsschwäche (Vorurteile)")
      __("Schlechte Eigenschaft (Aberglaube)")
    ]

    ultra: [
      [__("Fährtensuchen"), 1]
      [__("Holzbearbeitung"), 2]
      [__("Lebensmittelbearbeitung"), 1]
      [__("Orientierung"), 1]
      [__("Pflanzenkunde"), 1]
      [__("Wildnisleben"), 1]
      [__("Zechen"), 2]
    ]

    uncommon: [
      __("Hitzeresistenz")

      __("Fliegen")
      __("Gassenwissen")

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
