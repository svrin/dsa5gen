###
  Künstler
###

professions.add new (
  class P extends PKUE
    name: __("Künstler/Dichter")

    name_m: __("Dichter")
    name_w: __("Dichterin")

    costs: 600

    auto: [
      add_pool(60, __("Sprache"), __("Schrift"))

      [__("Dolche"), 4]

      [__("Sinnesschärfe"), 4]
      [__("Tanzen"), 4]

      [__("Betören"), 4]
      [__("Etikette"), 7]
      [__("Menschenkenntnis"), 4]
      [__("Überreden"), 7]
      [__("Willenskraft"), 4]

      [__("Brett- & Glücksspiel"), 4]
      [__("Geschichtswissen"), 4]
      [__("Götter & Kulte"), 4]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 10]
    ]
)

