###
  Botenreiter / Botenreiterin
###

professions.add [
  name: __("Botenreiter")
  name_w: __("Botenreiterin")

  costs: 0

  requirements: [
    ["MU", 11]
    ["GE", 11]
    ["KO", 12]
    -> 5 <= char.attributes["SO"] <= 10
  ]

  attributes:
    AuP: 2
    SO: 5

  vantages:
    auto: []
    recommended: [
      __("Ausdauernd"),
      __("Eisern"),
      __("Gefahreninstinkt"),
      __("Gutes Gedächtnis"),
      __("Innerer Kompass"),
      __("Resistenz gegen Krankheiten"),
      __("Richtungssinn"),
      __("Verbindungen (Dienstherr)")
      __("Verbindungen (Auftraggeber)")
      __("Zäher Hund"),
      __("Prinzipientreue"),
      __("Verpflichtungen (Dienstherr)")
    ]
    uncommon: [
      __("Blutrausch")
      __("Dunkelangst")
      __("Fettleibig")
      __("Glasknochen")
      __("Goldgier")
      __("Krankheitsanfällig")
      __("Kurzatmig")
      __("Neugier")
      __("Platzangst")
    ]
    reduced: [
      __("Reiterkampf")
      choice_from(1, __("Geländekunde"))
    __("Ortskenntnis (Strecke)")
    ]
    bb: [
      __("erprobtes Pferd mit Sattel und Zaumzeug")
    ]

  skills: [
    choice(1, __("Armbrust"), __("Bogen"))
    [__("Dolche"), 1]
    choice(1, __("Hiebwaffen"), __("Säbel"))
    [__("Ringen"), 1]

    [__("Athletik"), 3]
    choice(1, __("Klettern"), __("Boote Fahren"))
    [__("Körperbeherschung"), 1]
    [__("Reiten"), 5]
    [__("Schwimmen"), 1]
    [__("Selbstbeherschung"), 4]
    [__("Sinnesschärfe"), 3]

    [__("Etikette"), 4]
    [__("Gassenwissen"), 1]
    [__("Menschenkenntnis"), 1]

    [__("Fährtensuche"), 1]
    [__("Orientierung"), 5]
    [__("Wettervorhersage"), 3]
    [__("Wildnisleben"), 2]

    [__("Geographie"), 3]
    [__("Heraldik"), 3]
    [__("Rechnen"), 2]
    [__("Rechtskunde"), 2]
    [__("Tierkunde"), 2]

    choice_from(3, __("Lesen/Schreiben"))
    choice_from(4, __("Sprache kennen"))
    choice_from(4, __("Sprache kennen"))

    [__("Kartographie"), 5]
    [__("Malen/Zeichnen"), 4]
  ]

  equipments: [
    choice(1, __("stabile und wetterfeste Kleidung"), __("Uniform"))
    __("feste Stiefel")
    __("Regenmantel")
    choice_from(1, __("Waffe"))
    __("Dolch")
    __("Lederrolle (wasserdicht)")
    __("Tuchbeutel")
    __("Wasserschlauch")
    # Ausürstung im Wert von 1W6+2D
  ]




]