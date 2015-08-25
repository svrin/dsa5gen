###
  Zyklopäer
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Zyklopäer")

    social: [__("Adel")]

    speech: [
      [__("Zyklopäisch")]
      [__("Garethi")]
      [__("Garethi (Horathi)")]
    ]

    lettering: [
      __("Schrift (Kusliker Zeichen)")
    ]

    common: [
      __("Begabung (Schwimmen)")
      __("Entfernungssinn")
      __("Gutaussehend")
      __("Richtungssinn")
      __("Wohlklang")

      __("Persönlichkeitsschwächen (Arroganz)")
      __("Persönlichkeitsschwächen (Eitelkeit)")
      __("Persönlichkeitsschwächen (Vorurteile)")
  ]

    ultra: [
      [__("Boote & Schiffe"), 1]
      [__("Fährtensuchen"), 0]
      [__("Fischen & Angeln"), 2]
      [__("Geschichtswissen"), 1]
      [__("Götter & Kulte"), 2]
      [__("Klettern"), 0]
      [__("Mechanik"), 0]
      [__("Musizieren"), 1]
      [__("Orientierung"), 0]
      [__("Pflanzenkunde"), 0]
      [__("Rechnen"), 1]
      [__("Rechtskunde"), 1]
      [__("Sagen & Legenden"), 1]
      [__("Sternkunde"), 0]
      [__("Stoffbearbeitung"), 0]
      [__("Tanzen"), 1]
      [__("Tierkunde"), 0]
      [__("Wildnisleben"), 0]
    ]

    uncommon: [
      __("Kälteresistenz")

      __("Angst vor ... (dem Meer)")

      __("Fahrzeuge")
      __("Menschenkenntnis")
      __("Reiten")

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
