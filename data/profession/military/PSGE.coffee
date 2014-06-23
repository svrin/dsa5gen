###
  Schwertgeselle
###

class PSGE
  name: __("Schwertgeselle")

  groups: [
    __("Profession (profan)")
    __("Profession (military)")
    __("Schwertgeselle")
  ]

  name_m: __("Schwertgeselle")
  name_w: __("Schwertgesellin")

  costs: 1000

  required:
    IN: 11
    GE: 11

  auto: [
    add_pool(35, __("Sprache"), __("Schrift"))

    __("Finte")
    __("Meisterparade")
    add_pool(100, __("Kampfsonderfertigkeit"))

    [__("Raufen"), 4]
    [__("Dolche"), 4]
    add_pool(150, __("Kampftechniken"))

    [__("Körperbeherrschung"), 4]
    [__("Reiten"), 4]
    [__("Selbstbeherrschung"), 7]
    [__("Sinnesschärfe"), 4]
    [__("Zechen"), 4]

    [__("Betören"), 4]
    [__("Etikette"), 7]
    [__("Menschenkenntnis"), 4]
    [__("Willenskraft"), 4]

    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Kriegskunst"), 4]
    [__("Sagen & Legenden"), 4]

    [__("Heilkunde Wunden"), 4]
  ]

  common: [
    __("Balance")
    __("Beidhändig")
    __("Eisern")
    __("Gefahrensinstinkt")
    __("Gutaussehend")
    __("Hohe Lebenskraft")
    __("Soziale Anpassungsfähigkeit")
    __("Verbesserte Regeneration (Lebensenergie)")
    __("Zäher Hund")

    __("Arroganz")
    __("Eitelkeit")

    __("MU")
    __("IN")
    __("GE")
  ]

  uncommon: [
    __("Kampfrausch")

    __("Blutrausch")
    __("Fettleibig")
    __("Schlechte Regneration (Lebensenergie)")
  ]

professions.add new PSGE()



