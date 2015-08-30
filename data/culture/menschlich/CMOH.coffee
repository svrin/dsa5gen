###
  Mohas

  @version: US25001
  @page: 108
###

require ["data/culture/menschlich"], (C) ->
  cultures.add _.extend C,
    name: __("Mohas")

    social: [__("Adel"), __("Unfrei")]

    speech: [
      [__("Mohisch")]
    ]

    lettering: []

    common: [
      __("Giftresistenz")
      __("Glück")
      __("Gutaussehend")
      __("Hitzeresistenz")
      __("Richtungssinn")
      __("Schlangenmensch")

      __("Angst vor ... (engen Räumen)")
      __("Angst vor ... (dem Meer)")
      __("Angst vor ... (Toten und Untoten)")
      __("Kälteempfindlich")
      __("Niedrige Seelenkraft")
      __("Persönlichkeitsschwäche (Vorurteile)")
      __("Schlechte Eigenschaft (Aberglaube)")
      __("Schlechte Eigenschaft (Neugier)")
  ]

    ultra: [
      [__("Fährtensuchen"), 1]
      [__("Heilkunde Gift"), 1]
      [__("Heilkunde Krankheiten"), 0]
      [__("Klettern"), 0]
      [__("Körperbeherrschung"), 1]
      [__("Orientierung"), 1]
      [__("Pflanzenkunde"), 2]
      [__("Sagen & Legenden"), 1]
      [__("Sinnesschärfe"), 1]
      [__("Tierkunde"), 2]
      [__("Verbergen"), 1]
      [__("Wildnisleben"), 2]
    ]

    uncommon: [
      __("Kälteresistenz")

      __("Angst vor ... (Höhe)")
      __("Angst vor ... (Insekten)")
      __("Angst vor ... (Reptilien)")
      __("Angst vor ... (Spinnen)")
      __("Krankheitsanfällig")
      __("Nachtblind")
      __("Persönlichkeitsschwäche (Eitelkeit)")
      __("Schlechte Eigenschaft (Goldgier)")
      __("Unfähig in Naturtalenten")

      __("Etikette")
      __("Fahrzeuge")
      __("Fliegen")
      __("Gassenwissen")
      __("Geographie")
      __("Geschichtswissen")
      __("Metallbearbeitung")
      __("Reiten")
      __("Schlösserknacken")
      __("Zechen")
    ]

    professions: [
      __("Händler")
      __("Heiler")
      __("Jäger")
      __("Söldner")
      __("Stammeskrieger")
    ]
