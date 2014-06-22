define "data/skill/battle", [], () ->
  min: 0
  BE: true

  groups: [
    __("Kampftechniken")
  ]

require ["data/skill/battle"], (S) ->
  skills.add _.extend S,
    name: __("Armbrüste")
    dice: "FF"
    SF: "B"

  skills.add _.extend S,
    name: __("Ausweichen")
    dice: "GE"
    SF: "C"

  skills.add _.extend S,
    name: __("Bögen")
    dice: "FF"
    SF: "C"

  skills.add _.extend S,
    name: __("Dolche")
    dice: "GE"
    SF: "B"

  skills.add _.extend S,
    name: __("Fetchwaffen")
    dice: "GE"
    SF: "C"

  skills.add _.extend S,
    name: __("Hiebwaffen")
    dice: "KK"
    SF: "C"

  skills.add _.extend S,
    name: __("Kettenwaffen")
    dice: "KK"
    SF: "C"

  skills.add _.extend S,
    name: __("Raufen")
    dice: "GE"
    SF: "B"

  skills.add _.extend S,
    name: __("Schilde")
    dice: "KK"
    SF: "C"

  skills.add _.extend S,
    name: __("Schwerter")
    dice: "KK"
    SF: "C"

  skills.add _.extend S,
    name: __("Stangenwaffen")
    dice: "KK"
    SF: "C"

  skills.add _.extend S,
    name: __("Wurfwaffen")
    dice: "FF"
    SF: "B"

  skills.add _.extend S,
    name: __("Zweihandhiebwaffen")
    dice: "KK"
    SF: "C"

  skills.add _.extend S,
    name: __("Zweihandschwerter")
    dice: "KK"
    SF: "C"