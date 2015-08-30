###
  Aranier

  @version: US25001
  @page: 98
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Aranier")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Tulamidya")]
      [__("Tulamidya (Aranisch)")]
      [__("Garethi")]
      [__("Garethi (Aretya)")]
    ]

    lettering: [
      __("Schrift (Kusliker Zeichen)")
      __("Schrift (Tulamidya)")
    ]

    common: [
      __("Begabung in Gesellschaftstalenten")
      __("Entfernungssinn")

      __("Persönlichkeitsschwäche (Eitelkeit)")
      __("Persönlichkeitsschwäche (Vorurteile)")
      __("Schlechte Eigenschaft (Aberglaube)")
      __("Zerbrechlich")
    ]

    ultra: [
      [__("Betören"), 1]
      [__("Brett- & Glücksspiel"), 1]
      [__("Gassenwissen"), 2]
      [__("Handel"), 2]
      [__("Malen & Zeichnen"), 0]
      [__("Menschenkenntnis"), 1]
      [__("Rechnen"), 1]
      [__("Rechtskunde"), 0]
      [__("Reiten"), 0]
      [__("Sagen & Legenden"), 1]
      [__("Sternkunde"), 0]
      [__("Stoffbearbeitung"), 1]
      [__("Taschendiebstahl"), 0]
      [__("Überreden"), 2]
    ]

    uncommon: [
      __("Kälteresistenz")

      __("Blutrausch")

      __("Einschüchtern")
      __("Fährtensuchen")
      __("Wildnisleben")

      __("Ritter")
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
