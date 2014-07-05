###
  Künstler
###

professions.add new (
  class P extends PKUE
    name: __("Künstler/Musicus")

    name_m: __("Musicus")
    name_w: __("Musica")

    costs: 550

    auto: [
      add_pool(25, __("Sprache"), __("Schrift"))

      [__("Dolche"), 4]

      [__("Singen"), 7]
      [__("Sinnesschärfe"), 4]
      [__("Tanzen"), 4]

      [__("Betören"), 4]
      [__("Etikette"), 7]
      [__("Menschenkenntnis"), 4]
      [__("Überreden"), 4]
      [__("Willenskraft"), 4]

      [__("Brett- & Glücksspiel"), 4]
      [__("Geschichtswissen"), 4]
      [__("Götter & Kulte"), 4]
      [__("Musizieren"), 10]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 4]
    ]
)

