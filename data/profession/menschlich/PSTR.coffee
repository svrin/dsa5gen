###
  Streuner / Streunerin
###

professions.add [
  name: __("Streuner")
  name_w: __("Streunerin")

  costs: 3

  requirements: [
    ["MU", 11]
    ["IN", 12]
    ["CH", 12]
    ["FF", 12]
    -> 2 <= char.attributes["SO"] <= 10
  ]

  mods:
    SO: 2

  vantages:
    auto: [
      __("Soziale Anpassungsfähigkeit")
      distribute(25, __("Verbindungen (Hehler)"), __("Verbindungen (Informant)"))
    ]
    recommended: [
      __("Gefahreninstinkt")
      __("Glück")
      __("Glück im Spiel")
      __("Gut Aussehend")
      __("Verbindungen")
      __("Wohlklang")
      __("Aberglaube")
      __("Eitelkeit")
      __("Gesucht")
      __("Goldgier")
      __("Neugier")
    ]
    uncommon: [
      __("Adlige Abstammung")
    ]
    reduced: []
    bb: [
      __("Kleidung (edel)")
      __("Zierwaffe")
      __("Schmink-Ausrüstung")
    ]

  skills: [
    [__("Dolche"), 3]
    choice(2, __("Fetchwaffen"), __("Hiebwaffen"), __("Säbel"), __("Schwerter"))
    [__("Raufen"), 2]
    [__("Ringen"), 1]
    [__("Wurfmesser"), 2]

    [__("Athletik"), 2]
    [__("Klettern"), 1]
    [__("Körperbeherschung"), 1]
    [__("Schleichen"), 3]
    [__("Selbstbeherrschung"), 1]
    [__("Sich Verstecken"), 3]
    [__("Sinnesschärfe"), 2]
    [__("Tanzen"), 3]
    [__("Taschendiebstahl"), 5]
    [__("Zechen"), 3]

    [__("Betören"), 2]
    [__("Etikette"), 2]
    [__("Gassenwissen"), 5]
    [__("Menschenkenntnis"), 5]
    [__("Sich Verkleiden"), 2]
    [__("Überreden"), 3]

    [__("Rechnen"), 2]
    [__("Sagen/Legenden"), 1]
    [__("Schätzen"), 3]

    choice_from(4, __("Sprache kennen"))

    [__("Falschspiel"), 2]
    [__("Schlösser Knacken"), 2]

    __("Aufmerksamkeit")
  ]

  equipments: [
    __("Kleidung")
    __("Federhut")
    choice(__("Würfel (gezinkt)"), __("Karten (gezinkt)"))
    choice(__("Flasche mit Hochprozentigem"), __("Beutelchen mit Rauschkraut"))
    __("Messer in verborgener Scheide")
    __("Dolch")
    choice(__("Degen"), __("Säbel"), __("Axt"), __("Schwert"))

  ]




]