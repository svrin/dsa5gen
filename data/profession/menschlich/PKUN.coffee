###
  Kundschafter / Kundschafterin
###

professions.add [
  name: __("Kundschafter")
  name_w: __("Kundschafterin")

  costs: 7

  requirements: [
    ["MU", 12]
    ["IN", 12]
    ["KO", 12]
    -> 2 <= char.attributes["SO"] <= 7
  ]

  attributes:
    AuP: 2
    SO: 2

  vantages:
    auto: [
      choice_from(1, __("Geländekunde"))
    ]
    recommended: [
      __("Ausdauernd")
      __("Balance")
      __("Dämmerungssicht")
      __("Eisern")
      __("Feenfreund")
      __("Gefahreninstinkt")
      __("Herausragender Sinn (Sicht)")
      __("Herausragender Sinn (Gehör)")
      __("Innerer Kompass")
      __("Magiegespür")
      __("Richtungssinn")
      __("Tierfreund")
      __("Zäher Hund")
      __("Zeitgefühl")
      __("Vorurteile (Stadtbewohner)")
    ]
    uncommon: [
      __("Dunkelangst")
      __("Eingeschränkter Sinn")
      __("Fettleibig")
      __("Glasknochen")
      __("Krankheitsanfällig")
      __("Kurzatmig")
      __("Lahm")
      __("Nachtblind")
      __("Platzangst")
    ]
    reduced: [
      choice_from(1, __("Ortskenntnis"))
    ]
    bb: [
      choice(__("erprobtes Pferd mit Sattel und Zaumzeug"), __("ausgebildeter Spürhund"))
    ]

  skills: [
    choice(1, __("Armbrust"), __("Bogen"))
    [__("Dolche"), 2]
    choice(1, __("Hiebwaffen"), __("Säbel"))
    [__("Ringen"), 2]
    choice(3, __("Speere"), __("Stäbe"))

    choice(4, 3, 2, __("Athletik"), __("Boote Fahren"), __("Reiten"))
    [__("Klettern"), 3]
    [__("Körperbeherschung"), 2]
    [__("Schleichen"), 4]
    [__("Schwimmen"), 2]
    [__("Selbstbeherrschung"), 2]
    [__("Sich Verstecken"), 4]
    [__("Sinnesschärfe"), 6]

    [__("Fährtensuche"), 5]
    [__("Fallenstellen"), 2]
    [__("Fesseln/Entfesseln"), 3]
    [__("Fischen/Angeln"), 2]
    [__("Orientierung"), 5]
    [__("Wettervorhersage"), 3]
    [__("Wildnisleben"), 4]

    [__("Geographie"), 2]
    choice(1, __("Heraldik"), __("Pflanzenkunde"))
    choice(2, __("Kriegskunst"), __("Tierkunde"))

    choice_from(3, __("Sprache kennen"))

    [__("Heilkunde Gift"), 3]
    [__("Heilkunde Krankheit"), 2]
    [__("Heilkunde Wunden"), 2]
    [__("Holzbearbeitung"), 2]
    [__("Kochen"), 1]
    [__("Lederarbeiten"), 2]
    [__("Schneidern"), 2]
  ]

  equipments: [
    __("stabile und wetterfeste Kleidung")
    choice(1, __("Speer"), __("Kampfstab"))
    __("Dolch")
    __("Rucksack")
    __("Wasserschlauch")
    __("Feuerstein und Zunder")
    __("Schlafsack")
  ]




]