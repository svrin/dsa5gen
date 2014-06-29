###
  Liebesdiener
###

class PLIE_BMU extends PLIE
  name: __("Liebesdiener/Bordellmutter")

  name_m: __("Bordellvater")
  name_w: __("Bordellmutter")

  costs: 1000

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

    [__("Betören"), 7]
    [__("Gassenwissen"), 7]
    [__("Menschenkenntnis"), 10]
    [__("Überreden"), 4]
    [__("Verkleiden"), 4]
    [__("Willenskraft"), 7]

    [__("Götter & Kulte"), 4]
    [__("Rechnen"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Handel"), 7]
    [__("Heilkunde Krankheiten"), 4]
    [__("Heilkunde Wunden"), 4]
    [__("Stoffbearbeitung"), 4]
  ]

professions.add new PLIE_BMU()

