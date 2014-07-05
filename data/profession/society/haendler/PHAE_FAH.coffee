###
  Händler
###

professions.add new (
  class P extends PHAE
    name: __("Händler/Fahrender Händler")

    name_m: __("Fahrender Händler")
    name_w: __("Fahrende Händlerin")

    costs: 740

    auto: [
      add_pool(35, __("Sprache"), __("Schrift"))

      [__("Dolche"), 4]
      [__("Stangenwaffen"), 4]

      [__("Sinnesschärfe"), 4]

      [__("Orientierung"), 4]
      [__("Wildnisleben"), 4]

      [__("Etikette"), 4]
      [__("Gassenwissen"), 4]
      [__("Menschenkenntnis"), 4]
      [__("Überreden"), 7]
      [__("Willenskraft"), 4]

      [__("Geographie"), 4]
      [__("Götter & Kulte"), 4]
      [__("Rechnen"), 7]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 4]

      [__("Fahrzeuge"), 7]
      [__("Handel"), 10]
    ]
)
