###
  Brillantzwerge

  @version: US25001
  @page: 123
###

require ["data/culture/zwergisch"], (C) ->
  cultures.add _.extend C,
    name: __("Brillantzwerge")

    speech: [
      [__("Rogolan")]
      [__("Rogolan (brilliantzwergischer Dialekt)")]
    ]

    common: [
      __("Begabung in Handwerkstalenten")
      __("Soziale Anpassungsfähigkeit")

      __("Angst vor ... (dem Meer)")
      __("Persönlichkeitsschwäche (Eitelkeit)")
      __("Schlechte Eigenschaft (Geiz)")
      __("Schlechte Eigenschaft (Goldgier)")
      __("Schlechte Eigenschaft (Neugier)")
    ]

    ultra: [
      [__("Betören"), 1]
      [__("Geographie"), 2]
      [__("Geschichtswissen"), 1]
      [__("Malen & Zeichnen"), 0]
      [__("Mechanik"), 0]
      [__("Metallbearbeitung"), 1]
      [__("Musizieren"), 1]
      [__("Orientierung"), 0]
      [__("Rechnen"), 0]
      [__("Sagen & Legenden"), 1]
      [__("Schlösserknacken"), 2]
      [__("Steinbearbeitung"), 1]
      [__("Tanzen"), 1]
      [__("Tierkunde"), 0]
      [__("Verbergen"), 2]
      [__("Zechen"), 1]
    ]

    uncommon: [
      __("Angst vor ... (engen Räumen)")
      __("Blutrausch")
      __("Nachtblind")

      __("Boote & Schiffe")
      __("Fliegen")
      __("Schwimmen")

      __("Gladiator")
      __("Ritter")
      __("Stammeskrieger")
    ]

    professions: [
      __("Profession (profan)")

      __("Magier")

      __("Geweihter (Hesinde)")
      __("Geweihter (Phex)")
      __("Geweihter (Rondra)")
    ]
