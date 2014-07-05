###
  Künstler
###

professions.add new (
  class P extends PKUE
    name: __("Künstler/Kalligraph")

    name_m: __("Kalligraph")
    name_w: __("Kalligraphin")

    costs: 550

    auto: [
      add_pool(55, __("Sprache"), __("Schrift"))

      [__("Dolche"), 4]

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
      [__("Malen & Zeichnen"), 10]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 4]
    ]

    cultures:
      common: [
        __("Aranien")
        __("Novadis")
        __("Tulamidenlande")
      ]
)
