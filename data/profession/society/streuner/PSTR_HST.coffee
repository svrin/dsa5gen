###
  Streuner
###

professions.add new (
  class P extends PSTR
    name: __("Streuner/Hochstapler")

    groups: [
      __("Profession (profan)")
      __("Profession (society)")
      __("Streuner")
    ]

    name_m: __("Hochstapler")
    name_w: __("Hochstaplerin")

    costs: 1235

    auto: [
      add_pool(20, __("Sprache"), __("Schrift"))

      [__("Raufen"), 7]
      [__("Dolche"), 7]
      [__("Fechtwaffen"), 4]
      [__("Hiebwaffen"), 4]
      [__("Wurfwaffen"), 4]

      [__("Körperbeherrschung"), 4]
      [__("Klettern"), 4]
      [__("Selbstbeherrschung"), 4]
      [__("Sinnesschärfe"), 4]
      [__("Taschendiebstahl"), 7]
      [__("Verbergen"), 7]
      [__("Zechen"), 4]

      [__("Betören"), 10]
      [__("Etikette"), 7]
      [__("Gassenwissen"), 7]
      [__("Menschenkenntnis"), 4]
      [__("Überreden"), 7]
      [__("Verkleiden"), 7]
      [__("Willenskraft"), 4]

      [__("Orientierung"), 4]

      [__("Brett- & Glücksspiel"), 4]
      [__("Götter & Kulte"), 4]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 4]

      [__("Schlösserknacken"), 7]
    ]
)




