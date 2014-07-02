###
  Wildnisläufer
###

class PWDL
  name: __("Wildnisläufer")

  groups: [
    __("Profession (magic)")
    __("Profession (elfisch)")
  ]

  name_m: __("Wildnisläufer")
  name_w: __("Wildnisläuferin")

  costs: 950

  required: [
    [__("Elf")]
  ]

  auto: [
    [__("Tradition"), __("Elfen")]

    add_pool(25, __("Sprache"), __("Schrift"))

    [__("Bögen"), 7]

    [__("Körperbeherrschung"), 4]
    [__("Schwimmen"), 4]
    [__("Singen"), 4]
    [__("Sinnesschärfe"), 4]
    [__("Verbergen"), 4]

    [__("Fährtensuchen"), 7]
    [__("Orientierung"), 4]
    [__("Pflanzenkunde"), 4]
    [__("Tierkunde"), 4]
    [__("Wildnisleben"), 7]

    [__("Holzbearbeitung"), 4]
    [__("Musizieren"), 4]
    [__("Seefahrt"), 4]

    [__("Adlerauge"), 4]
    [__("Balsam Salabunde"), 4]
    [__("Bannbaladin"), 4]
    [__("Falkenaugen"), 4]
    [__("Flim Flam"), 4]
    [__("Fulminictus"), 4]
    [__("Nebelwand"), 4]
  ]

  common: [
    __("Dunkelsicht")
    __("Entfernungssinn")
    __("Hohe Magieresistenz")
    __("Richtungssinn")
    __("Unauffällig")

    __("Neugier")
    __("Raumangst")

    __("MU")
    __("KL")
    __("IN")
    __("CH")
  ]

  uncommon: [
    __("Soziale Anpassungsfähigkeit")

    __("Blutrausch")
  ]

professions.add new PWDL()



