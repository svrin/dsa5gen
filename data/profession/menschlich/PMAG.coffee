###
  Magier / Magierin
###

professions.add [
  name: __("Magier (privater Lehrmeister)")
  name_w: __("Magierin (privater Lehrmeister)")

  costs: 18
  zeitaufwendig: 3

  requirements: [
    ["MU", 11]
    ["KL", 13]
    ["IN", 11]
    ["CH", 12]
    -> 7 <= char.attributes["SO"] <= 13
  ]

  mods:
    MR: 2
    AsP: 12
    SO: 7

  vantages:
    auto: [
      __("Vollzauberer")
      [__("Neugier"), 5]
      choice(__("Verpflichtungen (Lehrmeister)"), __("Verpflichtungen (Magiergilde)"))
    ]
    recommended: [
      __("Astrale Regeneration")
      __("Astralmacht")
      __("Gebildet")
      __("Gutes Gedächtnis")
      __("Hohe Magieresistenz")
      __("Verbindungen (Lehrmeister)")
      __("Zeitgefühl")
      __("Arroganz")
      __("Eitelkeit")
      __("Weltfremd")
    ]
    uncommon: [
      __("Blutrausch")
      __("Feenfreund")
      __("Koboldfreund")
      __("Aberglaube")
      __("Arkanophobie")
      __("Einarmig/-händig")
      __("Niedrige Astralkraft")
      __("Niedrige Magieresistenz")
    ]
    reduced: [
      __("Aufmerksamkeit")
      __("Regeneration II")
      __("Seil des Adepten")
      __("Kraftfokus")
    ]
    bb: [
      __("verbesserter Zauberstab")
    ]

  skills: [
    [__("Stäbe"), 2]

    [__("Selbstbeherrschung"), 2]
    [__("Sinnesschärfe"), 2]

    [__("Etikette"), 3]
    [__("Lehren"), 2]
    [__("Menschenkenntnis"), 2]
    [__("Überreden"), 2]
    [__("Überzeugen"), 2]

    [__("Anatomie"), 1]
    [__("Brett-/Kartenspiel"), 1]
    [__("Geographie"), 2]
    [__("Geschichtswissen"), 3]
    [__("Götter/Kulte"), 2]
    [__("Magiekunde"), 6]
    [__("Mechanik"), 2]
    [__("Pflanzenkunde"), 4]
    [__("Rechnen"), 6]
    [__("Rechtskunde"), 2]
    [__("Sagen/Legenden"), 2]
    [__("Schätzen"), 1]
    [__("Sprachenkunde"), 1]
    [__("Sternkunde"), 4]
    [__("Tierkunde"), 2]

    choice(2, 4, "Garethi", "Tulamidya")
    choice(6, 4, "Bosparano", "Ur-Tulamidya")
    choice_from(7, __("Lesen/Schreiben"))
    choice(4, 4, __("Ur-Tulamidya"), __("Glyphen von Unau"), __("Kusliker Zeichen"), __("Tulamidya"), __("Zhayad"))

    [__("Alchimie"), 4]
    [__("Heilkunde Gift"), 1]
    [__("Heilkunde Krankheit"), 1]
    [__("Heilkunde Wunden"), 2]
    [__("Holzbearbeitung"), 1]
    [__("Kochen"), 2]
    [__("Malen/Zeichnen"), 2]

    [__("Analys"), 7, "H"]
    [__("Armatrutz"), 6, "H"]
    [__("Auris Nasus"), 5]
    [__("Balsam Salabunde"), 8, "H"]
    [__("Blitz"), 6]
    [__("Claudibus"), 4]
    [__("Foramen"), 4]
    [__("Fulminictus"), 8, "H"]
    [__("Gardianum"), 6]
    [__("Odem Arcanum"), 6]
    [__("Paralysis"), 7, "H"]
    [__("Silentium"), 5, "H"]
    [__("Somnigravis"), 7, "H"]

    __("Repräsentation (Gildenmagier)")
    [__("Ritualkenntnis (Gildenmagie)"), 3]
    __("Große Mediation")
    __("Bindung des Stabes")
    __("Ewige Flamme")
    __("Astrale Meditation")
    __("Regeneration I")
  ]

  equipments: [
    __("Robe mit arkanen Symbolen")
    __("Reisekutte")
    __("hoher spitzer Hut")
    __("Zauberstab mit ersten Stabzauber")
    __("Tine")
    choice(__("Tagebuch"), [__("Blatt Pergament", 10)])
    __("Dolch")
    __("Umhängetasche (Leder)")
  ]




]