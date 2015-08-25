###
  Mhanadistani

  @version: US25001
  @page: 104
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Mhanadistani")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Tylamidya")]
      [__("Tylamidya (Mhanadisch-Balashidisch)")]
    ]

    lettering: [
      __("Schrift (Tulamidya)")
    ]

    common: [
      __("Glück")
      __("Hitzeresistenz")
      __("Soziale Anpassungsfähigkeit")

      __("Persönlichkeitsschwächen (Eitelkeit)")
      __("Persönlichkeitsschwächen (Vorurteile)")
      __("Schlechte Eigenschaften (Aberglaube)")
      __("Schlechte Eigenschaften (Goldgier)")
      __("Schlechte Eigenschaften (Neugier)")
    ]

    ultra: [
      [__("Brett- & Glücksspiel"), 2]
      [__("Gassenwissen"), 2]
      [__("Geschichtswissen"), 1]
      [__("Götter & Kulte"), 2]
      [__("Handel"), 2]
      [__("Magiekunde"), 1]
      [__("Reiten"), 0]
      [__("Sagen & Legenden"), 2]
      [__("Sternkunde"), 0]
      [__("Taschendiebstahl"), 0]
      [__("Überreden"), 1]
    ]

    uncommon: [
      __("Kälteresistenz")

      __("Angst vor ... (Menschenmassen)")
      __("Angst vor ... (engen Räumen)")

      __("Fahrzeuge")

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
