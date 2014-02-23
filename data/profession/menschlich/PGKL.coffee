###
  Gaukler / Gauklerin
###

professions.add [
  name: __("Gaukler")
  name_w: __("Gauklerin")

  costs: 2

  requirements: [
    ["MU", 11]
    ["CH", 12]
    -> char.attributes["GE"] > 13 or char.attributes["FF"] > 13
    -> 5 <= char.attributes["SO"] <= 10
  ]

  mods:
    AuP: 2
    SO: 5

  vantages:
    auto: [
      __("Ausweichen I")
      __("Standfest")
    ]
    recommended: [
      __("Balance"),
      __("Feenfreund"),
      __("Gefahreninstinkt"),
      __("Glück")
      __("Glück im Spiel")
      __("Gut Aussehend"),
      __("Schlangenmensch")
      __("Soziale Anpassungsfähigkeit")
      __("Wohlklang")
      __("Aberglaube")
      __("Eitelkeit")
      __("Neid")
      __("Neugier")
    ]
    uncommon: [
      __("Adlige Abstammung")
      __("Unansehnlich")
      __("Widerwertiges Aussehen")
    ]
    bb: [
      choice(__("Esel"), __("Maultier"))
      __("volle Aufrüstung für aufwendige Einmannschau")
    ]

  skills: [
    [__("Dolche"), 1]
    choice(1, __("Hiebwaffen"), __("Stäbe"))
    [__("Raufen"), 2]
    [__("Wurfmesser"), 2]

    choice(5, 3, __("Akrobatik"), __("Athletik"), __("Gaukeleien"))
    choice(2, 1, __("Klettern"), __("Reiten"))
    [__("Körperbeherschung"), 5]
    [__("Sich Verstecken"), 1]
    choice(1, __("Singen"), __("Tanzen"))
    [__("Taschendiebstahl"), 1]
    [__("Zechen"), 1]

    [__("Gassenwissen"), 3]
    [__("Menschenkenntnis"), 4]
    [__("Sich Verkleiden"), 2]
    [__("Überreden"), 3]

    [__("Geographie"), 1]
    [__("Sagen/Legenden"), 2]
    [__("Schätzen"), 3]
    [__("Tierkunde"), 2]

    choice_from(4, __("Sprache kennen"))

    choice(4, 2, __("Abrichten"), __("Falschspiel"), __("Malen/Zeichnen"))
    [__("Fahrzeug lenken"), 2]
    [__("Heilkunde Wunden"), 1]
    [__("Kochen"), 1]
    [__("Schneidern"), 2]
  ]

  equipments: [
    __("einfache, aber sehr auffällige Kleidung")
    __("Schminke")
    __("Tuchbeutel")
    __("Weinschlauch")
    # passendes Arbeitsgerät
    choice_from(1, __("Musikinstrument"))
  ]




]