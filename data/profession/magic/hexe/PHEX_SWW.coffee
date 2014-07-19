###
  Hexe / Schwesternschaft: Schwarze Witwen
###

class PHEX_SWW
  name: __("Hexe/Schwarze Witwen")

  groups: [
    __("Profession (magic)")
    __("Hexe")
  ]

  name_m: __("Schwarzer Witwer")
  name_w: __("Schwarze Witwen")

  costs: 1050
  attribute: 'CH'

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Tradition"), __("Hexe")]
    [__("Schwesternschaft"), __("Schwarze Witwen")]
    add_pool(5, __("Zaubertricks"))
    [__("Zaubertricks"), 7]
    [__("Zwiegespräch"), 1]

    add_pool(((character) ->
      Math.round(character.get('AP') / 4)), __('Vertrautenmagie'))
    add_pool(10, __("Sprache"), __("Schrift"))

    [__("Dolche"), 4]
    [__("Blasrohr"), 4]

    [__("Fliegen"), 4]
    [__("Klettern"), 4]
    [__("Selbstbeherschung"), 4]
    [__("Sinnesschärfe"), 4]

    [__("Betören"), 4]
    [__("Etikette"), 4]
    [__("Willenskraft"), 4]

    [__("Pflanzenkunde"), 4]
    [__("Tierkunde"), 4]

    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]

    [__("Alchimie"), 4]
    [__("Heilkunde Gift"), 7]
    [__("Heilkunde Krankheiten"), 4]
    [__("Heilkunde Seele"), 4]

    [__("Balsam Salabunde"), 4]
    [__("Grosse Gier"), 4]
    [__("Hexengalle"), 7]
    [__("Hexenknoten"), 4]
    [__("Krabbelnder Schrecken"), 7]
    [__("Odem Arcanum"), 4]
    [__("Spinnenlauf"), 7]
  ]

  common: [
    __("Entfernungssinn")
    __("Giftresitenz")
    __("Gutausehend")
    __("Herausragender Sinn (Tastsinn)")
    __("Immunität gegen Gift")
    __("Magische Einstimmung")

    __("Arroganz")
    __("Eitelkeit")
    __("Goldgier")
    __("Neugier")

    __("MU")
    __("KL")
    __("IN")
    __("CH")
  ]

  uncommon: [
    __("Eisern")
    __("Zäher Hund")

    __("Blutrausch")
  ]

professions.add new PHEX_SWW()



