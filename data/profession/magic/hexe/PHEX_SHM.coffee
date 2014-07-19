###
  Hexe / Schwesternschaft: Seherin von Heute und Morgen
###

class PHEX_SHM
  name: __("Hexe/Seherin von Heute und Morgen")

  groups: [
    __("Profession (magic)")
    __("Hexe")
  ]

  name_m: __("Seher von Heute und Morgen")
  name_w: __("Seherin von Heute und Morgen")

  costs: 950
  attribute: 'CH'

  required: [
    [__("Zauberer"), 1]
  ]

  auto: [
    [__("Tradition"), __("Hexe")]
    [__("Schwesternschaft"), __("Seherin von Heute und Morgen")]
    add_pool(5, __("Zaubertricks"))
    [__("Zaubertricks"), 7]
    [__("Zwiegespräch"), 1]

    add_pool(((character) ->
      Math.round(character.get('AP') / 4)), __('Vertrautenmagie'))
    add_pool(30, __("Sprache"), __("Schrift"))

    [__("Raufen"), 4]

    [__("Bekehren & Überzeugen"), 4]
    [__("Menschenkenntnis"), 7]
    [__("Überreden"), 4]

    [__("Pflanzenkunde"), 4]
    [__("Tierkunde"), 4]
    [__("Wildnisleben"), 4]

    [__("Geschichtswissen"), 4]
    [__("Götter & Kulte"), 4]
    [__("Sagen & Legenden"), 7]
    [__("Sternkunden"), 4]

    [__("Alchimie"), 4]
    [__("Heilkunde Krankheiten"), 4]
    [__("Heilkunde Seele"), 4]

    [__("Blick in die Gedanken"), 7]
    [__("Grosse Gier"), 4]
    [__("Hexengalle"), 4]
    [__("Hexenknoten"), 4]
    [__("Krähenruf"), 7]
    [__("Odem Arcanum"), 7]
    [__("Sanftmut"), 4]
  ]

  common: [
    __("Magische Einstimmung")
    __("Prophezeien")
    __("Verhüllte Aura")

    __("Eitelkeit")
    __("Rachsucht")

    __("KL")
    __("IN")
    __("CH")
  ]

  uncommon: [
    __("Eisern")
    __("Zäher Hund")

    __("Blutrausch")
  ]

professions.add new PHEX_SHM()



