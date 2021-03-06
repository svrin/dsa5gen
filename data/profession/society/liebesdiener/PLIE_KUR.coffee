###
  Liebesdiener
###

professions.add new (
  class P extends PLIE
    name: __("Liebesdiener/Kurtisane")

    name_m: __("Gesellschafter")
    name_w: __("Kurtisane")

    costs: 970

    auto: [
      add_pool(25, __("Sprache"), __("Schrift"))

      [__("Raufen"), 4]
      [__("Dolche"), 4]

      [__("Körperbeherrschung"), 4]
      [__("Selbstbeherrschung"), 4]
      [__("Sinnesschärfe"), 4]
      [__("Tanzen"), 4]
      [__("Verbergen"), 4]
      [__("Zechen"), 4]

      [__("Betören"), 10]
      [__("Etikette"), 7]
      [__("Gassenwissen"), 7]
      [__("Menschenkenntnis"), 7]
      [__("Überreden"), 4]
      [__("Verkleiden"), 4]
      [__("Willenskraft"), 4]

      [__("Fesseln"), 4]

      [__("Götter & Kulte"), 4]
      [__("Rechnen"), 4]
      [__("Sagen & Legenden"), 4]
      [__("Staatskunst"), 4]

      [__("Handel"), 4]
      [__("Heilkunde Krankheiten"), 4]
      [__("Heilkunde Wunden"), 4]
      [__("Stoffbearbeitung"), 4]
    ]
)

