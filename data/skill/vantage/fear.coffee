###
  Angst vor ...

  @version: US25001
  @page: 170
###

define "data/vantage/fear", [], () ->
  min: 0
  max: 3
  count: "roman"
  costs: -8

  groups: [
    __("Angst vor ...")
  ]

require ["data/vantage/fear"], (S) ->
  skills.add _.extend {}, S,
    name: __("Angst vor ... (Reptilien)")
    name_m: __("Herpetophobie")
    name_w: __("Herpetophobie")
  skills.add _.extend {}, S,
    name: __("Angst vor ... (Insekten)")
    name_m: __("Entomophobie")
    name_w: __("Entomophobie")
  skills.add _.extend {}, S,
    name: __("Angst vor ... (Spinnen)")
    name_m: __("Arachnaphobie")
    name_w: __("Arachnaphobie")
  skills.add _.extend {}, S,
    name: __("Angst vor ... (Blut)")
    name_m: __("Hemaphobie")
    name_w: __("Hemaphobie")
  skills.add _.extend {}, S,
    name: __("Angst vor ... (Dunkelheit)")
    name_m: __("Dunkelangst")
    name_w: __("Dunkelangst")
  skills.add _.extend {}, S,
    name: __("Angst vor ... (Höhe)")
    name_m: __("Höhenangst")
    name_w: __("Höhenangst")
  skills.add _.extend {}, S,
    name: __("Angst vor ... (dem Meer)")
    name_m: __("Meeresangst")
    name_w: __("Meeresangst")
  skills.add _.extend {}, S,
    name: __("Angst vor ... (engen Räumen)")
    name_m: __("Raumangst")
    name_w: __("Raumangst")
  skills.add _.extend {}, S,
    name: __("Angst vor ... (Toten und Untoten)")
    name_m: __("Totenangst")
    name_w: __("Totenangst")