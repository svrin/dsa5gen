###
  Gaukler
###

professions.add new (
  class P extends PGAU
    name: __("Gaukler/Zirkusdirektor")

    name_m: __("Zirkusdirektor")
    name_w: __("Zirkusdirektorin")

    costs: 1095

    auto: [
      add_pool(30, __("Sprache"), __("Schrift"))

      [__("Ausweichen"), 4]
      [__("Dolche"), 4]
      [__("Hiebwaffen"), 4]
      [__("Raufen"), 4]
      [__("Wurfwaffen"), 4]

      [__("Exotische Waffe (Peitsche)"), 4]

      [__("Gaukeleien"), 7]
      [__("Klettern"), 4]
      [__("Körperbeherrschung"), 7]
      [__("Reiten"), 4]
      [__("Singen"), 4]
      [__("Tanzen"), 4]
      [__("Taschendiebstahl"), 4]
      [__("Verbergen"), 4]
      [__("Zechen"), 4]

      [__("Etikette"), 1]
      [__("Gassenwissen"), 4]
      [__("Menschenkenntnis"), 7]
      [__("Überreden"), 7]
      [__("Verkleiden"), 4]

      [__("Tierkunde"), 4]
      [__("Wildnisleben"), 4]

      [__("Geographie"), 7]
      [__("Götter & Kulte"), 4]
      [__("Sagen & Legenden"), 7]

      [__("Fahrzeuge"), 4]
      [__("Malen & Zeichnen"), 4]
      [__("Musizieren"), 4]
    ]
)
