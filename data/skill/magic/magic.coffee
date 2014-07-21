define "data/skill/magic/spells", [], () ->
  min: 0
  BE: true

  groups: [
    __("Zauber")
  ]

require ["data/skill/magic/spells"], (S) ->
  skills.add _.extend {}, S,
    name: __("Adlerauge")
    dices: ["KL", "IN", "FF"]
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Adlerschwinge")
    dices: ["IN", "FF", "KO"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Armatrutz")
    dices: ["KL", "IN", "FF"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Auris Nasus")
    dices: ["KL", "IN", "FF"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Axxeleratus")
    dices: ["KL", "IN", "FF"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Balsam Salabunde")
    dices: ["KL", "IN", "FF"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Bannbaladin")
    dices: ["KL", "IN", "CH", "MR"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Blick in die Gedanken")
    dices: ["KL", "IN", "FF", "MR"]
    SF: "C"

    AsP: "8 + 4/30s"
    range: "4"
    attribute: __("Hellsicht")
    duration: {"casting": "8", "effect": "*"}

  skills.add _.extend {}, S,
    name: __("Blitz dich find")
    dices: ["KL", "IN", "CH", "MR"]
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Corpofesso")
    dices: ["IN", "FF", "KO", "MR"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Duplicatus")
    dices: ["KL", "IN", "FF"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Falkenauge")
    dices: ["KL", "IN", "FF"]
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Flim Flam")
    dices: ["MU", "IN", "CH"]
    SF: "A"

    AsP: "1"
    range: "8"
    attribute: __("Elementar")
    duration: {"casting": "2", "effect": "*"}

  skills.add _.extend {}, S,
    name: __("Fulminictus")
    dices: ["IN", "FF", "KO"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Gardianum")
    dices: ["MU", "IN", "CH"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Grosse Gier")
    dices: ["KL", "IN", "CH", "MR"]
    SF: "B"

    AsP: 4
    range: "Berührung"
    attribute: __("Einfluss")
    duration: {"casting": "4", "effect": "FP x 5m"}

  skills.add _.extend {}, S,
    name: __("Harmlose Gestalt")
    dices: ["KL", "IN", "FF"]
    SF: "B"

    AsP: "8 + 4/5m"
    range: "Selbst"
    attribute: __("Illusion")
    duration: {"casting": "8", "effect": "*"}

  skills.add _.extend {}, S,
    name: __("Hexengalle")
    dices: ["IN", "FF", "KO"]
    SF: "B"

    AsP: 4
    range: "Selbst"
    attribute: __("Verwandlung")
    duration: {"casting": "2", "effect": "FP x 1m"}

  skills.add _.extend {}, S,
    name: __("Hexenkrallen")
    dices: ["IN", "FF", "KO"]
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Horriphobus")
    dices: ["KL", "IN", "CH", "MR"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Ignifaxius")
    dices: ["MU", "IN", "CH"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Invocatio Minima")
    dices: ["MU", "IN", "CH"]
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Katzenaugen")
    dices: ["KL", "IN", "FF"]
    SF: "A"

    AsP: "2 + 1/10m"
    range: "Selbst"
    attribute: __("Verwandlung")
    duration: {"casting": "8", "effect": "*"}

  skills.add _.extend {}, S,
    name: __("Krötensprung")
    dices: ["KL", "IN", "FF"]
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Manifesto")
    dices: ["MU", "IN", "CH"]
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Motoricus")
    dices: ["GE", "FF", "KK"]
    SF: "B"

    AsP: "3 + 1/5S"
    range: "8"
    attribute: __("Telekinese")
    duration: {"casting": "4", "effect": "5m"}

  skills.add _.extend {}, S,
    name: __("Nebelwand")
    dices: ["MU", "IN", "CH"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Odem Arcanum")
    dices: ["KL", "IN", "FF"]
    SF: "A"

    AsP: "4"
    range: "8"
    attribute: __("Hellsicht")
    duration: {"casting": "4", "effect": "1m"}

  skills.add _.extend {}, S,
    name: __("Paralysis")
    dices: ["IN", "FF", "KO", "MR"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Penetrizzel")
    dices: ["KL", "IN", "FF"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Psychostabilis")
    dices: ["MU", "KL", "IN"]
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Radau")
    dices: ["GE", "FF", "KK"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Respondami")
    dices: ["MU", "IN", "CH", "MR"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Salander")
    dices: ["IN", "FF", "KO", "MR"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Sanftmut")
    dices: ["MU", "CH", "CH", "MR"]
    SF: "A"

    AsP: "4"
    range: "8"
    attribute: __("Einfluss")
    duration: {"casting": "2", "effect": "5m"}

  skills.add _.extend {}, S,
    name: __("Satuarias Herrlichkeit")
    dices: ["KL", "IN", "FF"]
    SF: "B"

    AsP: "8"
    range: "Selbst"
    attribute: __("Verwandlung")
    duration: {"casting": "8", "effect": "FP x 1h"}

  skills.add _.extend {}, S,
    name: __("Silentium")
    dices: ["GE", "FF", "KK"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Somnigravis")
    dices: ["KL", "IN", "CH", "MR"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Spinnenlauf")
    dices: ["IN", "FF", "KO"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Spurlos")
    dices: ["IN", "FF", "KO"]
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Transversalis")
    dices: ["KL", "IN", "KO"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Visibili")
    dices: ["MU", "IN", "CH"]
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Wasseratem")
    dices: ["IN", "FF", "KO"]
    SF: "B"
