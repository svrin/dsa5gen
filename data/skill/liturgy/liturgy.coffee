###
  Liturgien

  @version: US25001
  @page: 324-331
###

define "data/skill/liturgy", [], () ->
  min: 0
  BE: true

  groups: [
    __("Liturgien")
  ]

require ["data/skill/liturgy"], (S) ->
  skills.add _.extend {}, S,
    name: __("Bann der Dunkelheit")
    dices: ["MU", "KL", "CH"]
    SF: "A"
    groups: [__("Liturgien"), __("Praois (Ordnung)")]

  skills.add _.extend {}, S,
    name: __("Bann der Furcht")
    dices: ["IN", "CH", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Boron (Traum)")]

  skills.add _.extend {}, S,
    name: __("Bann des Lichts")
    dices: ["MU", "KL", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Boron (Tod)"), __("Boron (Traum)"), __("Phex (Schatten)")]

  skills.add _.extend {}, S,
    name: __("Blendstrahl")
    dices: ["MU", "KL", "IN", "SK"]
    SF: "A"
    groups: [__("Liturgien"), __("Praios (Antimagie)"), __("Praios (Ordnung)")]

  skills.add _.extend {}, S,
    name: __("Ehrenhaftigkeit")
    dices: ["MU", "IN", "CH", "SK"]
    SF: "B"
    groups: [__("Liturgien"), __("Rondra (Schild)"), __("Rondra (Sturm)")]

  skills.add _.extend {}, S,
    name: __("Entzifferung")
    dices: ["KL", "KL", "IN"]
    SF: "A"
    groups: [__("Liturgien"), __("Hesinde (Wissen)")]

  skills.add _.extend {}, S,
    name: __("Ermutigung")
    dices: ["MU", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Rondra (Sturm)")]

  skills.add _.extend {}, S,
    name: __("Fall ins Nichts")
    dices: ["MU", "IN", "GE"]
    SF: "A"
    groups: [__("Liturgien"), __("Phex (Schatten)")]

  skills.add _.extend {}, S,
    name: __("Friedvolle Aura")
    dices: ["MU", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Hesinde (Magie)"), __("Hesinde (Wissen)"), __("Peraine (Heilung)"),
             __("Peraine (Landwirtschaft)")]

  skills.add _.extend {}, S,
    name: __("Giftbann")
    dices: ["KL", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Peraine (Heilung)")]

  skills.add _.extend {}, S,
    name: __("Göttlicher Fingerzeig")
    dices: ["KL", "IN", "IN"]
    SF: "A"
    groups: [__("Liturgien"), __("Aspekt (allgemein)")]

  skills.add _.extend {}, S,
    name: __("Göttliches Zeichen")
    dices: ["IN", "IN", "CH"]
    SF: "A"
    groups: [__("Liturgien"), __("Aspekt (allgemein)")]

  skills.add _.extend {}, S,
    name: __("Heilsegen")
    dices: ["KL", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Peraine (Heilung)")]

  skills.add _.extend {}, S,
    name: __("Kleiner Bann wider Untote")
    dices: ["MU", "MU", "CH", "ZK"]
    SF: "B"
    groups: [__("Liturgien"), __("Boron (Tod)")]

  skills.add _.extend {}, S,
    name: __("Kleiner Bannstrahl")
    dices: ["MU", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Praios (Antimagie)")]

  skills.add _.extend {}, S,
    name: __("Krankheitsbann")
    dices: ["KL", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Peraine (Heilung)")]

  skills.add _.extend {}, S,
    name: __("Lautlos")
    dices: ["IN", "IN", "GE"]
    SF: "B"
    groups: [__("Liturgien"), __("Phex (Schatten)")]

  skills.add _.extend {}, S,
    name: __("Magieschutz")
    dices: ["MU", "IN", "CH"]
    SF: "C"
    groups: [__("Liturgien"), __("Praios (Antimagie)"), __("Hesinde (Magie)")]

  skills.add _.extend {}, S,
    name: __("Magiesicht")
    dices: ["KL", "IN", "IN"]
    SF: "A"
    groups: [__("Liturgien"), __("Praios (Antimagie)"), __("Hesinde (Magie)")]

  skills.add _.extend {}, S,
    name: __("Mondsicht")
    dices: ["KL", "KL", "IN"]
    SF: "A"
    groups: [__("Liturgien"), __("Phex (Schatten)")]

  skills.add _.extend {}, S,
    name: __("Mondsilberzunge")
    dices: ["KL", "KL", "IN"]
    SF: "A"
    groups: [__("Liturgien"), __("Phex (Handel)")]

  skills.add _.extend {}, S,
    name: __("Objektsegen")
    dices: ["MU", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Aspekt (allgemein)")]

  skills.add _.extend {}, S,
    name: __("Ort der Ruhe")
    dices: ["MU", "KL", "IN"]
    SF: "A"
    groups: [__("Liturgien"), __("Boron (Traum)")]

  skills.add _.extend {}, S,
    name: __("Pflanzenwuchs")
    dices: ["KL", "IN", "CH"]
    SF: "A"
    groups: [__("Liturgien"), __("Peraine (Landwirtschaft)")]

  skills.add _.extend {}, S,
    name: __("Rabenruf")
    dices: ["MU", "KL", "IN"]
    SF: "A"
    groups: [__("Liturgien"), __("Boron (Tod)"), __("Boron (Traum)")]

  skills.add _.extend {}, S,
    name: __("Schlaf")
    dices: ["KL", "IN", "CH", "SK"]
    SF: "B"
    groups: [__("Liturgien"), __("Boron (Traum)")]

  skills.add _.extend {}, S,
    name: __("Schlangenstab")
    dices: ["MU", "KL", "IN"]
    SF: "B"
    groups: [__("Liturgien"), __("Hesinde (Magie)")]

  skills.add _.extend {}, S,
    name: __("Schlangenzunge")
    dices: ["MU", "KL", "IN"]
    SF: "A"
    groups: [__("Liturgien"), __("Hesinde (Magie)"), __("Hesinde (Wissen)")]

  skills.add _.extend {}, S,
    name: __("Schmerzresistenz")
    dices: ["MU", "IN", "KO"]
    SF: "C"
    groups: [__("Liturgien"), __("Rondra (Schild)")]

  skills.add _.extend {}, S,
    name: __("Schutz der Wehrlosen")
    dices: ["MU", "IN", "CH", "SK"]
    SF: "B"
    groups: [__("Liturgien"), __("Rondra (Schild)")]

  skills.add _.extend {}, S,
    name: __("Sternenglanz")
    dices: ["KL", "IN", "CH"]
    SF: "B"
    groups: [__("Liturgien"), __("Phex (Handel)")]

  skills.add _.extend {}, S,
    name: __("Wahrheit")
    dices: ["MU", "KL", "IN", "SK"]
    SF: "C"
    groups: [__("Liturgien"), __("Praios (Ordnung)")]

  skills.add _.extend {}, S,
    name: __("Wieselflink")
    dices: ["IN", "IN", "GE"]
    SF: "B"
    groups: [__("Liturgien"), __("Phex (Schatten)")]

  skills.add _.extend {}, S,
    name: __("Wundersame Verständigung")
    dices: ["KL", "KL", "IN"]
    SF: "B"
    groups: [__("Liturgien"), __("Hesinde (Wissen)"), __("Phex (Handel)")]