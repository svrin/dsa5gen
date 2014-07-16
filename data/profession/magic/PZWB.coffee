###
  Zauberweber
###

class PZWB
  name: __("Zauberweber")

  groups: [
    __("Profession (magic)")
    __("Profession (elfisch)")
  ]

  name_m: __("Zauberweber")
  name_w: __("Zauberweberin")

  costs: 800
  attribute: 'IN'

  required: [
    [__("Elf")]
  ]

  auto: [
    [__("Tradition"), __("Elfen")]

    add_pool(25, __("Sprache"), __("Schrift"))

    [__("Bögen"), 4]

    [__("Körperbeherrschung"), 4]
    [__("Schwimmen"), 4]
    [__("Singen"), 4]

    [__("Fährtensuchen"), 4]
    [__("Orientierung"), 4]
    [__("Pflanzenkunde"), 4]
    [__("Wildnisleben"), 4]

    [__("Musizieren"), 7]

    [__("Adlerschwinge"), 4]
    [__("Blick in die Gedanken"), 4]
    [__("Band und Fessel"), 4]
    [__("Bannbaladin"), 7]
    [__("Wasseratem"), 4]
    [__("Silentium"), 7]
    [__("Visibili"), 7]
    [__("Odem"), 4]
  ]

  common: [
    __("Dunkelsicht")
    __("Entfernungssinn")
    __("Gutes Gedächtnis")
    __("Hohe Magieresistenz")
    __("Richtungssinn")
    __("Unauffällig")

    __("Neugier")
    __("Raumangst")

    __("KL")
    __("IN")
    __("CH")
  ]

  uncommon: [
    __("Soziale Anpassungsfähigkeit")

    __("Blutrausch")
  ]

professions.add new PZWB()



