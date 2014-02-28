###
  Krieger / Kriegerin
###

professions.add [
  name: __("Krieger (Ruadas Ehr)")
  name_w: __("Kriegerin (Ruadas Ehr)")

  costs: 24
  zeitaufwendig: 3

  requirements: [
    ["MU", 12]
    ["GE", 12]
    ["KO", 13]
    ["KK", 12]
    -> 8 <= char.attributes["SO"] <= 12
  ]

  attributes:
    LeP: 2
    AuP: 3
    SO: 8

  vantages:
    auto: [
      __("Akademische Ausbildung (Krieger)")
      [__("Prinzipientreue"), 10]
      __("Linkhand")
      __("Rüstungsgewöhnung I (langes Kettenhemd)")
      __("Schildkampf I")
    ]
    recommended: [
      __("Adlige Abstammung")
      __("Ausdauernd")
      __("Eisern")
      __("Hohe Lebenskraft")
      __("Schnelle Heilung")
      __("Zäher Hund")
      __("Arroganz")
      __("Verpflichtungen (Finanzier)")
      __("Verpflichtungen (Dienstherr)")
      __("Verpflichtungen (Lehrer)")
    ]
    uncommon: [
      __("Blutrausch")
      __("Glasknochen")
      __("Einhändig")
      __("Fettleibig")
      __("Krankheitsanfällig")
      __("Schlechte Regeneration")
    ]
    bb: [
      __("erprobtes Pferd mit Sattel und Zaumzeug")
    ]

  skills: [
    [__("Anderthalbhänder"), 6]
    [__("Armbrust"), 4]
    [__("Dolche"), 2]
    [__("Infanteriewaffen"), 3]
    [__("Raufen"), 2]
    [__("Ringen"), 3]
    [__("Schwerter"), 6]
    [__("Zweihandschwerter/-säbel"), 4]

    [__("Athletik"), 4]
    [__("Klettern"), 2]
    [__("Körperbeherschung"), 2]
    [__("Reiten"), 5]
    [__("Schwimmen"), 2]
    [__("Selbstbeherrschung"), 5]
    [__("Sinnesschärfe"), 2]
    [__("Zechen"), 1]

    [__("Etikette"), 1]

    [__("Fesseln/Entfesseln"), 1]
    [__("Orientierung"), 1]

    [__("Geschichtswissen"), 2]
    [__("Götter/Kulte"), 2]
    [__("Heraldik"), 3]
    [__("Kriegskunst"), 4]
    [__("Rechnen"), 2]
    [__("Rechtskunde"), 2]
    [__("Sagen/Legenden"), 2]
    [__("Tierkunde"), 2]

    [__("Kusliker Zeichen"), 4]

    [__("Heilkunde Wunden"), 3]
    [__("Lederarbeiten"), 2]
  ]

  equipments: [
    __("hochwertige Kleidung")
    __("Stiefel")
    __("Anderthalbhänder")
    __("Schwert")
    __("Dolch")
    __("Holzschild (einfach)")
    __("langes Kettenhemd")
    __("Waffenpflegeset")
    __("Kriegerbrief")
  ]




]