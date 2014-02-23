###
  Einbrecher / Einbrecherin
###

professions.add [
  name: __("Einbrecher")
  name_w: __("Einbrecherin")

  costs: 0

  requirements: [
    ["MU", 12]
    ["FF", 13]
    ["GE", 12]
    -> 2 <= char.attributes["SO"] <= 10
  ]

  mods:
    SO: 2

  vantages:
    auto: [
      choice(5, __("Goldgier"), __("Neugier"))
      choice(__("Ortskenntnis (Gebiet)"), __("Ortskenntnis (Gegend)"))
    ]
    recommended: [
      __("Ausdauernd"),
      __("Balance"),
      __("Dämmerungssicht")
      __("Gefahreninstinkt"),
      __("Gutes Gedächtnis"),
      __("Herausragender Sinn (Gehör)")
      __("Herausragender Sinn (Tastsinn)")
      __("Innerer Kompass"),
      __("Richtungssinn"),
      __("Schlangenmensch")
      __("Soziale Anpassungsfähigkeit")
      __("Verbindungen (Hehler)")
      __("Verbindungen (Informant)")
      __("Verbindungen (Patron)")
      __("Zwergennase"),
      __("Gesucht"),
      __("Goldgier"),
      __("Neugier"),
      __("Verpflichtungen (Diebesbande)")
      __("Verpflichtungen (Auftraggeber)")
    ]
    uncommon: [
      __("Dunkelangst")
      __("Fettleibig")
      __("Höhenangst")
      __("Nachtblind")
      __("Raumangst")
    ]
    reduced: []
    bb: [
      choice(__("hochwertige und gut sortierte Nachschlüssel/Dietriche"),
             __("Seidenseil mit ‘lautlosem’ Wurfhaken"))
    ]

  skills: [
    [__("Dolche"), 3]
    [__("Ringen"), 1]
    [__("Wurfmesser"), 1]

    [__("Akrobatik"), 2]
    [__("Athletik"), 2]
    [__("Klettern"), 6]
    [__("Körperbeherschung"), 5]
    [__("Schleichen"), 5]
    [__("Selbstbeherschung"), 2]
    [__("Sich Verstecken"), 5]
    [__("Sinnesschärfe"), 3]
    [__("Taschendiebstahl"), 2]

    [__("Gassenwissen"), 4]
    [__("Menschenkenntnis"), 1]
    [__("Sich Verkleiden"), 1]

    [__("Fährtensuche"), 1]
    [__("Fesseln/Entfesseln"), 1]
    [__("Orientierung"), 2]

    [__("Mechanik"), 1]
    [__("Rechnen"), 2]
    [__("Rechtskunde"), 1]
    [__("Schätzen"), 4]

    [__("Malen/Zeichnen"), 2]
    [__("Schlösser Knacken"), 7]

    __("Klettern (Freiklettern)")
  ]

  equipments: [
    __("verbreitete Kleidung")
    choice(__("dunkle Kapuze"), __("dunkler Mantel"))
    __("dunkle Handschuhe")
    choice(__("Nachschlüssel"), __("Dietriche"))
    __("10 Schritt Seil mit Wurfhaken")
    __("Gürtel mit Trageschlaufen und -haken")
    __("Dolch (verborgen)")
  ]




]