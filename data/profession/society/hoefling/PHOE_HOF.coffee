###
  Höfling
###

professions.add new (
  class P extends PHOE
    name: __("Höfling/Hofdame")

    name_w: __("Hofdame")

    costs: 810

    required:
      gender: 'w'

    auto: [
      add_pool(15, __("Sprache"), __("Schrift"))

      [__("Raufen"), 4]
      [__("Dolche"), 4]
      [__("Schwerter"), 4]
      [__("Bögen"), 4]

      [__("Reiten"), 4]
      [__("Verbergen"), 4]
      [__("Sinnesschärfe"), 4]
      [__("Tanzen"), 4]
      [__("Zechen"), 4]

      [__("Bekehren & Überzeugen"), 4]
      [__("Betören"), 4]
      [__("Etikette"), 10]
      [__("Menschenkenntnis"), 7]
      [__("Überreden"), 4]
      [__("Willenskraft"), 4]

      [__("Geschichtswissen"), 4]
      [__("Götter & Kulte"), 4]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 4]
      [__("Staatskunst"), 7]

      [__("Stoffbearbeitung"), 7]
    ]

    cultures:
      common: [
        __("Nostria & Andergast")
      ]
)

