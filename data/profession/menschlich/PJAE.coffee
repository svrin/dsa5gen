###
  Jäger / Jägerin
###

professions.add [
  name: __("Jäger")
  name_w: __("Jägerin")

  costs: 11

  requirements: [
    ["IN", 11]
    ["GE", 12]
    ["KO", 11]
    -> 3 <= char.attributes["SO"] <= 7
  ]

  mods:
    AuP: 2
    SO: 3

  vantages:
    auto: [
      choice_from(1, __("Geländekunde"))
      __("Scharfschütze")
    ]
    recommended: [
      __("Ausdauernd")
      __("Dämmerungssicht")
      __("Eisern")
      __("Gefahreninstinkt")
      __("Herausragender Sinn (Gehör)")
      __("Herausragender Sinn (Sicht)")
      __("Innerer Kompass")
      __("Richtungssinn")
      __("Zäher Hund")
      __("Raumangst")
    ]
    uncommon: [
      __("Soziale Anpassungsfähigkeit")
      __("Dunkelangst")
      __("Nachtblind")
      __("Platzangst")
    ]
    reduced: [
      __("Ortskenntnis")
    ]
    bb: [
      choice(__("Packtier mit Zaumzeug und Packtaschen"),
             __("ausgebildeter Jagdhund"),
             __("ausgebildeter Jagdfalke"))
    ]

  skills: [
    choice(5, __("Armbrust"), __("Bogen"), __("Wurfspeer"))
    choice(1, __("Hiebwaffen"), __("Säbel"))
    [__("Ringen"), 2]
    [__("Speere"), 3]

    choice(5, __("Athletik"), __("Reiten"), __("Boote Fahren"))
    [__("Klettern"), 2]
    [__("Körperbeherschung"), 2]
    [__("Schleichen"), 5]
    [__("Schwimmen"), 2]
    [__("Selbstbeherrschung"), 2]
    [__("Sich Verstecken"), 5]
    [__("Sinnesschärfe"), 5]
    [__("Stimmen Imitieren"), 1]

    [__("Fährtensuche"), 6]
    [__("Fallenstellen"), 2]
    [__("Fesseln/Entfesseln"), 3]
    [__("Fischen/Angeln"), 2]
    [__("Orientierung"), 3]
    [__("Wettervorhersage"), 3]
    [__("Wildnisleben"), 5]

    [__("Pflanzeknude"), 2]
    [__("Tierkunde"), 4]

    choice(2, __("Abrichten"), __("Bogenbau"))
    choice(3, __("Fleischer"), __("Gerber/Kürschner"))
    [__("Heilkunde Gift"), 3]
    [__("Heilkunde Krankheit"), 2]
    [__("Heilkunde Wunden"), 2]
    [__("Kochen"), 1]
    [__("Lederarbeiten"), 2]
    [__("Schneidern"), 2]
  ]

  equipments: [
    __("stabile und wetterfeste Kleidung")
    choice_from(1, __("Waffe"))
    __("Dolch")
    [__("Tierfallen"), 3]
    __("Rucksack")
    __("Wasserschlauch")
    __("Brotbeutel")
    __("Feuerstein und Zunder")
    __("Schlafsack")
    __("kleines Zelt")
  ]




]