###
  Legendensänger / Legendensängerin
###

professions.add [
  name: __("Legendensänger")
  name_w: __("Legendensängerin")

  costs: 4
  zeitaufwendig: 3

  requirements: [
    ["CH", 13]
    ["IN", 13]
    ->
      char.culture.is(__("Auelfen"))
    ->
      3 <= char.attributes["SO"] <= 13
  ]

  mods:
    SO: 3

  vantages:
    recommended: [
      __("Astralmacht"),
      __("Gutes Gedächtnis")
    ]
    reduced: [
      __("Sorgenlied")
      __("Friedenslied")
      __("Windgeflüster")
      __("Zaubermelodie")
    ]

  skills: [
    choice(2, __("Gaukeleien"), __("Stimmen Imitieren"))
    [__("Singen"), 5]
    [__("Sinnesschärfe"), 2]
    [__("Tanzen"), 5]

    [__("Betören"), 1]
    [__("Lehren"), 4]
    [__("Menschenkenntnis"), 4, "L"]
    [__("Überreden"), 2]
    [__("Überzeugen"), 3, "L"]

    [__("Geschichtswissen"), 2, "L"]
    [__("Magiekunde"), 3, "L"]
    [__("Sagen/Legenden"), 6, "L"]
    [__("Sternkunde"), 3]

    [__("Isdira"), 4]
    [__("Asdharia"), 8]
    choice_from(6, __("Sprache kennen"))
    [__("Lesen/Schreiben (Isdira/Asdharia)"), 9]

    [__("Malen/Zeichnen"), 4]
    [__("Musizieren"), 5]

    [__("Blick in die Gedanken"), 6]
    [__("Gedankenbilder"), 6]
    [__("Einfluss bannen"), 7, "H"]
    [__("Elfenstimme"), 8, "H"]
    [__("Odem"), 5]
    [__("Sanftmut"), 7, "H"]
    [__("Seidenzunge"), 8, "H"]

    __("Lied der Lieder")
    __("Erinnerungsmelodie")
  ]

  equipments: []


]