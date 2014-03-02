###
  Wundarzt / Wundärztin
###

professions.add [
  name: __("Wundarzt")
  name_w: __("Wundärztin")

  costs: 0

  requirements: [
    ["IN", 12]
    ["CH", 11]
    ["FF", 13]
    ->
      5 <= this.get('attributes')["SO"] <= 10
  ]

  attributes:
    SO: 5

  vantages:
    auto: [
      __("Resistenz gegen Krankheiten")
    ]
    recommended: [
      __("Verbindungen (Apotheker)")
      __("Verbindungen (Kunde)")
    ]
    uncommon: [
      __("Adlige Abstammung")
      __("Eitelkeit")
      __("Krankheitsanfällig")
      __("Totenangst")
    ]
    reduced: [
      __("Betäubungsschlag")
    ]
    bb: [
      __("Beutel mit haltbaren Kräutern")
      __("hochwertiges ärztliches Besteck")
    ]

  skills: [
    [__("Dolche"), 2]
    choice(1, __("Hiebwaffen"), __("Säbel"))
    [__("Raufen"), 3]
    [__("Ringen"), 3]
    [__("Stäbe"), 2]

    [__("Selbstbeherrschung"), 2]
    [__("Sinnesschärfe"), 2]
    [__("Zechen"), 2]

    [__("Etikette"), 1]
    [__("Gassenwissen"), 3]
    [__("Menschenkenntnis"), 5]
    [__("Überreden"), 4]
    [__("Überzeugen"), 1]

    [__("Fesseln/Entfesseln"), 1]

    [__("Anatomie"), 3]
    [__("Götter/Kulte"), 2]
    [__("Magiekunde"), 1]
    [__("Pflanzenkunde"), 4]
    [__("Rechnen"), 3]
    [__("Rechtskunde"), 2]
    [__("Sagen/Legenden"), 1]

    choice_from(4, __("Lesen/Schreiben"))
    choice_from(4, __("Sprache kennen"))

    [__("Heilkunde Gift"), 3]
    [__("Heilkunde Krankheit"), 3]
    [__("Heilkunde Wunden"), 6]
    [__("Kochen"), 4]
  ]

  equipments: [
    __("Kleidung")
    __("Dolch")
    __("blutbefleckte Lederschürze")
    __("Tuchbeutel")
    __("Knochensäge")
    __("scharfes Messer")
    __("Zangen")
    __("Bohrer")
    __("Haken zum Halten der Wundränder")
    __("Verbandszzeug")
    __("halbes Dutzend blutstillender oder fiebersenkender Kräuter")
    __("lederumwickeltes Beißholz")
    __("billiger Schnaps")
    __("Augenbinde")
  ]

]