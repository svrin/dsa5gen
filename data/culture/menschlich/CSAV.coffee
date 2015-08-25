###
  Südaventurier

  @version: US25001
  @page: 114
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Südaventurier")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Garethi")]
      [__("Garethi (Brabaci)")]
      [__("Garethi (Charypto)")]
      [__("Garethi (Gatamo)")]
    ]

    lettering: [
      __("Kusliker Zeichen")
    ]

    common: [
      __("Hitzeresistenz")
      __("Soziale Anpassungsfähigkeit")

      __("Kälteempfindlich")
      __("Persönlichkeitsschwächen (Arroganz)")
      __("Persönlichkeitsschwächen (Eitelkeit)")
      __("Schlechte Eigenschaften (Aberglaube)")
      __("Schlechte Eigenschaften (Goldgier)")
      __("Schlechte Eigenschaften (Jähzorn)")
      __("Schlechte Eigenschaften (Neugier)")
    ]

    ultra: [
      [__("Betören"), 1]
      [__("Boote & Schiffe"), 1]
      [__("Fischen & Angeln"), 1]
      [__("Gassenwissen"), 2]
      [__("Handel"), 0]
      [__("Heilkunde Gift"), 1]
      [__("Menschenkenntnis"), 2]
      [__("Orientierung"), 0]
      [__("Pflanzenkunde"), 0]
      [__("Überreden"), 1]
      [__("Willenskraft"), 1]
      [__("Zechen"), 0]
    ]

    uncommon: [
      __("Kälteresistenz")

      __("Angst vor ... (engen Räumen)")
      __("Angst vor ... (Menschenmassen)")
      __("Angst vor ... (Toten und Untoten)")

      __("Fahrzeuge")
      __("Fliegen")

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
