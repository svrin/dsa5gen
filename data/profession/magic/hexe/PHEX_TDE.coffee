###
  Hexe / Schwesternschaft: Töchter der Erden
###

class PHEX_TDE
  name: __("Hexe/Töchter der Erde")

  groups: [
    __("Profession (magic)")
    __("Hexe")
  ]

  name_m: __("Sohn der Erde")
  name_w: __("Tochter der Erde")

  costs: 1050
  attribute: 'CH'

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Tradition"), __("Hexe")]
    [__("Schwesternschaft"), __("Töchter der Erde")]
    add_pool(5, __("Zaubertricks"))
    [__("Zaubertricks"), 7]
    [__("Zwiegespräch"), 1]

    add_pool(((character) ->
      Math.round(character.get('AP') / 4)), __("Vertrauter"), __('Vertrautenmagie'))
    add_pool(45, __("Sprache"), __("Schrift"))

    [__("Zaubertradition mit Vertrautentiere")]
    ["V_MU", 2],
    ["V_KL", 2],
    ["V_IN", 2],
    ["V_CH", 2],
    ["V_FF", 2],
    ["V_GE", 2],
    ["V_KO", 2],
    ["V_KK", 2]
    ["V_LE", 10],
    ["V_AE", 15],
    ["V_RS", 1],
    ["V_MR", 1]

    [__("Raufen"), 4]
    [__("Dolche"), 4]

    [__("Fliegen"), 4]
    [__("Verbergen"), 4]

    [__("Menschenkenntnis"), 4]
    [__("Verkleiden"), 4]

    [__("Pflanzenkunde"), 4]
    [__("Tierkunde"), 4]
    [__("Wildnisleben"), 4]

    [__("Magiekunde"), 4]
    [__("Sagen & Legenden"), 7]

    [__("Alchimie"), 4]
    [__("Heilkunde Gift"), 4]
    [__("Heilkunde Krankheiten"), 4]
    [__("Heilkunde Wunden"), 4]

    [__("Armatrutz"), 4]
    [__("Balsam Salabunde"), 7]
    [__("Grosse Gier"), 4]
    [__("Harmlose Gestalt"), 7]
    [__("Hexenknoten"), 4]
    [__("Krötensprung"), 7]
    [__("Sanftmut"), 4]
  ]

  common: [
    __("Magieblockade (KL)")
    __("Magische Einstimmung")
    __("Verbesserte Regeneration (Astralenergie)")
    __("Verhüllte Aura")

    __("Körpergebundene Kraft")
    __("Schlechte Eigenschaft (Angst vor ...)")
    __("Schlechte Eigenschaft (Weltfremd)")
    __("Stigma (Hexensträhne)")

    __("IN")
    __("CH")
  ]

  uncommon: [
    __("Eisern")
    __("Soziale Anpassungsfähigkeit")
    __("Zäher Hund")

    __("Auffällig")
  ]

professions.add new PHEX_TDE()



