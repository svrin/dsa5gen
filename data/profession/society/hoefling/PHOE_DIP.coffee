###
  Höfling
###

class PHOE_DIP extends PHOE
  name: __("Höfling/Diplomat")

  name_m: __("Diplomat")
  name_w: __("Diplomatin")

  costs: 810

  auto: [
    choice_from(15, __("Sprache"), __("Schrift"))

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
    [__("Etikette"), 7]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 4]
    [__("Willenskraft"), 7]

    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Rechtskunde"), 4]
    [__("Sagen & Legenden"), 4]
    [__("Staatskunst"), 10]
  ]

professions.add new PHOE_DIP()

