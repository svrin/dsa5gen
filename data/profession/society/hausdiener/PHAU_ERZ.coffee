###
  Hausdiener
###

professions.add new (
  class P extends PHAU
    name: __("Hausdiener/Erzieher")

    name_m: __("Erzieher")
    name_w: __("Erzieherin")

    costs: 730

    auto: [
      add_pool(10, __("Sprache"), __("Schrift"))

      [__("Raufen"), 4]
      [__("Dolche"), 4]

      [__("Selbstbeherrschung"), 4]
      [__("Sinnesschärfe"), 4]
      [__("Verbergen"), 4]
      [__("Zechen"), 4]

      [__("Etikette"), 7]
      [__("Gassenwissen"), 4]
      [__("Menschenkenntnis"), 4]
      [__("Überreden"), 4]

      [__("Tierkunde"), 4]

      [__("Götter & Kulte"), 4]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 4]

      [__("Fahrzeuge"), 4]
      [__("Handel"), 4]
      [__("Heilkunde Wunden"), 4]
      [__("Holzbearbeitung"), 4]
      [__("Kochen & Backen"), 4]
      [__("Lederbearbeitung"), 4]
      [__("Stoffbearbeitung"), 4]
    ]
)
