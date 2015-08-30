###
  Nordaventurier

  @version: US25001
  @page: 111
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Nordaventurier")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Garethi")]
      [__("Alaani")]
      [__("Nujuka")]
      [__("Thorwalsch")]
    ]

    lettering: [
      __("Kusliker Zeichen")
    ]

    common: [
      __("Entfernungssinn")
      __("Richtungssinn")
      __("Zäher Hund")

      __("Schlechte Eigenschaft (Aberglaube)")
      __("Angst vor ... (engen Räumen)")
  ]

    ultra: [
      [__("Fährtensuchen"), 1]
      [__("Fischen & Angeln"), 0]
      [__("Handel"), 1]
      [__("Holzbearbeitung"), 1]
      [__("Lederbearbeitung"), 1]
      [__("Orientierung"), 1]
      [__("Pflanzenkunde"), 1]
      [__("Selbstbeherrschung"), 1]
      [__("Steinbearbeitung"), 0]
      [__("Sternkunde"), 0]
      [__("Tierkunde"), 1]
      [__("Verbergen"), 0]
      [__("Wildnisleben"), 1]
      [__("Zechen"), 1]
    ]

    uncommon: [
      __("Hitzeresistenz")

      __("Krankheitsanfällig")

      __("Betören")
      __("Fliegen")
      __("Geschichtswissen")
      __("Magiekunde")
      __("Mechanik")
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
