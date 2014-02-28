###
  Entdecker / Entdeckerin
###

professions.add [
  name: __("Entdecker")
  name_w: __("Entdeckerin")

  costs: 6

  requirements: [
    ["MU", 12]
    ["KL", 12]
    ["IN", 12]
    ["KO", 11]
    -> 7 <= char.attributes["SO"] <= 13
  ]

  attributes:
    SO: 7

  vantages:
    auto: [
      [__("Neugier"), 5]
    ]
    recommended: [
      __("Adlige Abstammung")
      __("Bgeabung Sprachen")
      __("Gefahreninstinkt")
      __("Gutes Gedächtnis")
      __("Innerer Kompass")
      __("Richtungssinn")
      __("Soziale Anpassungsfähigkeit")
      __("Verbindungen (Geldgeber)")
      __("Verbindungen (Auftraggeber)")
      __("Zwergennase")
      __("Verpflichtungen (Geldgeber)")
      __("Verpflichtungen (Auftraggeber)")

    ]
    uncommon: [
      __("Aberglaube")
      __("Dunkelangst")
      __("Höhenangst")
      __("Raumangst")
    ]
    reduced: [
      __("Nandusgefälliges Wissen")
      choice_from(1, __("Geländekunde"))
    ]
    bb: [
      choice(__("Maultier mit Sattel und Zaumzeug"),
        __("Boot (klein)"))
      __("Zelt")
      __("Kompass")
    ]

  skills: [
    [__("Armbrust"), 1]
    choice(2, __("Hiebwaffen"), __("Säbel"), __("Stäbe"))

    [__("Klettern"), 2]
    [__("Körperbeherschung"), 1]
    [__("Reiten"), 3]
    [__("Schwimmen"), 1]
    [__("Sinnesschärfe"), 4]

    [__("Etikette"), 3]
    [__("Menschenkenntnis"), 1]
    [__("Überreden"), 2]

    [__("Fährtensuche"), 2]
    [__("Orientierung"), 3]
    [__("Wettervorhersage"), 2]
    [__("Wildnisleben"), 2]

    [__("Geographie"), 2]
    [__("Geschichtswissen"), 4]
    [__("Götter/Kulte"), 3]
    [__("Heraldik"), 1]
    [__("Magiekunde"), 3]
    [__("Mechanik"), 1]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 1]
    [__("Sagen/Legenden"), 2]
    [__("Schätzen"), 3]
    [__("Sprachenkunde"), 3]
    [__("Sternkunde"), 2]
    choice(5, 4, 2, "Anatomie", "Alchimie", "Bergbau", "Feinmechanik", "Geographie", "Geschichtswissen",
                    "Gesteinskunde", "Götter/Kulte", "Heraldik", "Kartographie", "Magiekunde", "Mechanik",
                    "Pflanzenkunde", "Rechtskunde", "Sprachenkunde", "Sternkunde", "Tierkunde")

    choice_from(6, 6, 2, 2, __("Sprache kennen"))
    choice_from(6, 4, 4, __("Lesen/Schreiben"))

    [__("Boote Fahren"), 2]
    choice(1, "Feinmechanik", "Schlösser knacken")
    [__("Heilkunde Gift"), 1]
    [__("Heilkunde Wunden"), 2]
    [__("Kartographie"), 5]
    [__("Malen/Zeichnen"), 4]

  ]

  equipments: [
    __("stabile und wetterfeste Kleidung")
    __("feste Stiefel")
    choice(__("Mantel (gewachst)"), __("Umhang (gewachst)"))
    choice(__("Kampfstab"), __("Keule"), __("Säbel"))
    __("Dolch")
    __("Rucksack")
    __("Lederrolle (wasserdicht)")
    __("Schreibzeug")
    __("Kohlestift")
    [__("Blatt einfaches Papier"), 20]
    __("Tagebuch")
    __("Lupe")
  ]




]