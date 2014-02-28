###
  Wildnisläufer / Wildnisläuferin
###

professions.add [
  name: __("Wildnisläufer")
  name_w: __("Wildnisläuferin")

  costs: 5
  zeitaufwendig: 3

  requirements: [
    ["GE", 13]
    ["KO", 12]
    ->
      char.culture.is(__("Auelfen"))
    ->
      3 <= char.attributes["SO"] <= 13
  ]

  attributes:
    SO: 3

  vantages:
    recommended: [
      __("Astralmacht")
      __("Ausdauernd")
      __("Eisern")
      __("Entfernungssinn")
      __("Gefahreninstinkt")
      __("Tierfreund")
    ]
    uncommon: [
      __("Kurzatmig")
      __("Lahm")
    ]
    reduced: [
      __("Ausweichen I")
      __("Ausweichen II")
    ]

  skills: [
    choice(2, __("Bogen"), __("Wurfspeere"))
    [__("Dolche"), 2]
    choice(3, __("Fechtwaffen"), __("Hiebwaffen"), __("Säbel"), __("Schwerter"), __("Speere"), __("Stäbe"))

    [__("Athletik"), 3]
    [__("Klettern"), 2]
    [__("Körperbeherrerschung"), 3]
    [__("Schleichen"), 3]
    [__("Schwimmen"), 2]
    [__("Sich Verstecken"), 3]
    [__("Sinnesschärfe"), 4]
    [__("Stimmen Imitieren"), 2, "L"]

    [__("Fährtensuche"), 5]
    choice(3, "Fallenstellen", "Fischen/Angeln")
    [__("Fesseln/Entfesseln"), 3]
    [__("Orientierung"), 4]
    [__("Wettervorhersage"), 3]
    [__("Wildnisleben"), 3]

    [__("Pflanzenkunde"), 3, "L"]
    [__("Sternkunde"), 1]
    [__("Tierkunde"), 5, "L"]

    [__("Bogenbau"), 3]
    [__("Boote Fahren"), 2]
    [__("Heilkunde Wunden"), 1]

    [__("Adlerauge"), 8, "H"]
    [__("Adlerschwinge"), 4]
    [__("Exposami"), 5]
    [__("Movimento"), 7]
    [__("Nebelwand"), 6, "H"]
    [__("Visibili"), 7, "H"]
    [__("Weiße Mähn"), 6, "H"]

    choice_from(1, __("Geländekunde"))
  ]

  equipments: [
    choice_from(1, __("Waffe"))
  ]


]