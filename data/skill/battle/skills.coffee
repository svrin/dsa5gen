###
  Kampftechniken

  @version: US25001
###

define "data/skill/battle/skills/f", [], () ->
  min: 6
  BE: true

  groups: [
    __("Kampftechniken")
    __("Fernkampftechniken")
  ]

require ["data/skill/battle/skills/f"], (S) ->
  skills.add _.extend {}, S,
    name: __("Armbrüste")
    dice: "FF"
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Bögen")
    dice: "FF"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Wurfwaffen")
    dice: "FF"
    SF: "B"

define "data/skill/battle/skills/n", [], () ->
  min: 6
  BE: true

  groups: [
    __("Kampftechniken")
    __("Nahkampftechniken")
  ]

require ["data/skill/battle/skills/n"], (S) ->

  skills.add _.extend {}, S,
    name: __("Dolche")
    dice: "GE"
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Fechtwaffen")
    dice: "GE"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Hiebwaffen")
    dice: "KK"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Kettenwaffen")
    dice: "KK"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Lanzen")
    dice: "KK"
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Raufen")
    dice: "GE/KK"
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Schilde")
    dice: "KK"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Schwerter")
    dice: "GE/KK"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Stangenwaffen")
    dice: "GE/KK"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Zweihandhiebwaffen")
    dice: "KK"
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Zweihandschwerter")
    dice: "KK"
    SF: "C"