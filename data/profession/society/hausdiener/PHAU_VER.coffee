###
  Hausdiener
###

professions.add new (
  class P extends PHAU
    name: __("Hausdiener/Verwalter")

    name_m: __("Verwalter")
    name_w: __("Verwalterin")

    costs: 805

    auto: [
      add_pool(10, __("Sprache"), __("Schrift"))

      [__("Raufen"), 4]
      [__("Dolche"), 4]

      [__("Selbstbeherrschung"), 4]
      [__("Sinnesschärfe"), 4]
      [__("Verbergen"), 4]
      [__("Zechen"), 4]

      [__("Etikette"), 4]
      [__("Gassenwissen"), 4]
      [__("Menschenkenntnis"), 4]
      [__("Überreden"), 4]
      [__("Willenskraft"), 4]

      [__("Tierkunde"), 4]

      [__("Götter & Kulte"), 4]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 4]
      [__("Staatskunst"), 7]

      [__("Fahrzeuge"), 4]
      [__("Handel"), 7]
      [__("Heilkunde Wunden"), 4]
      [__("Holzbearbeitung"), 4]
      [__("Kochen & Backen"), 4]
      [__("Lederbearbeitung"), 4]
      [__("Stoffbearbeitung"), 4]
    ]
)
