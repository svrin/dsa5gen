###
  Pirat / Piratin
###

professions.add [
  name: __("Pirat")
  name_w: __("Piratin")

  costs: 1

  requirements: [
    ["MU", 12]
    ["GE", 12]
    ["KO", 11]
    ["KK", 11]
    -> 1 <= char.attributes["SO"] <= 10
  ]

  mods:
    SO: 1

  vantages:
    auto: [
      choice(5, __("Aberglaube"), __("Goldgier"))
    ]
    recommended: [
      __("Hohe Lebenskraft")
      __("Innerer Kompass")
      __("Schnelle Heilung")
      __("Zäher Hund")
      __("Aberglaube")
      __("Gesucht")
      __("Jähzorn")
    ]
    uncommon: [
      __("Adlige Abstammung")
      __("Höhenangst")
      __("Meeresangst")
      __("Platzangst")
      __("Schlechte Regeneration")
    ]
    reduced: [
      __("Kampf im Wasser")
    ]
    bb: [
      __("Kiste mit optischen/nautischen Utensilien")
      __("Fernrohr")
      __("Kompass")
      __("Quadrant")
    ]

  skills: [
    [__("Dolche"), 2]
    choice(4, 2, __("Hiebwaffen"), __("Säbel"))
    [__("Raufen"), 3]
    choice_from(3, 2, __("Wurfwaffe"))

    [__("Akrobatik"), 2]
    [__("Athletik"), 2]
    [__("Klettern"), 4]
    [__("Körperbeherrschung"), 4]
    [__("Schwimmen"), 3]
    [__("Selbstbeherrschung"), 1]
    [__("Zechen"), 3]

    [__("Gassenwissen"), 1]
    [__("Menschenkenntnis"), 1]

    [__("Fesseln/Entfesseln"), 3]
    [__("Fischen/Angeln"), 3]
    [__("Orientierung"), 2]
    [__("Wettervorhersage"), 3]

    [__("Geographie"), 2]
    [__("Kriegskunst"), 2]
    [__("Sagen/Legenden"), 1]
    [__("Schätzen"), 2]

    choice_from(4, __("Sprache kennen"))

    [__("Boote Fahren"), 4]
    [__("Heilkunde Wunden"), 1]
    [__("Holzbearbeitung"), 2]
    [__("Lederarbeiten"), 2]
    choice(2, __("Kochen"), __("Mechanik"), __("Schneidern"), __("Sternkunde"), __("Zimmermann"))
    [__("Seefahrt"), 4]

    __("Meereskundig")
    __("Standfest")
  ]

  equipments: [
    __("Kleidung (zweckmäßig)")
    choice_from(1, __("Nahkampfwaffe"))
    choice_from(1, __("Wurfwaffe"))
    choice(1, __("Arbeitsmesser"), __("Dolch"))
    __("Enter- oder Bootshaken")
    __("Hängematte")
    __("Wolldecke")
    choice(1, __("Weinschlauch"), __("Schnapsflasche"))
  ]




]