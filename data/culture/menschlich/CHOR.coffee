###
  Horasier

  @version: US25001
  @page: 102
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Horasier")

    social: [__("Adel")]

    speech: [
      [__("Garethi")]
      [__("Garethi (Horathi)")]
    ]

    lettering: [
      __("Kusliker Zeichen")
    ]

    common: [
      __("Soziale Anpassungsfähigkeit")

      __("Persönlichkeitsschwäche (Arroganz)")
      __("Persönlichkeitsschwäche (Eitelkeit)")
      __("Persönlichkeitsschwäche (Vorurteile)")
  ]

    ultra: [
      [__("Betören"), 1]
      [__("Boote & Schiffe"), 1]
      [__("Etikette"), 2]
      [__("Fahrzeuge"), 0]
      [__("Gassenwissen"), 2]
      [__("Geographie"), 1]
      [__("Geschichtswissen"), 1]
      [__("Handel"), 1]
      [__("Magiekunde"), 0]
      [__("Mechanik"), 1]
      [__("Rechnen"), 2]
      [__("Rechtskunde"), 2]
      [__("Tanzen"), 1]
    ]

    uncommon: [
      __("Begabung in Naturtalenten")

      __("Angst vor ... (engen Räumen)")

      __("Fährtensuchen")
      __("Fliegen")
      __("Pflanzenkunde")
      __("Tierkunde")
      __("Wildnisleben")

      __("Gladiator")
      __("Ritter")
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
