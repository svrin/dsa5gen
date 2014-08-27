define "data/equipment/proviant", [], () ->
  groups: [
    __("Ausrüstung")
    __("Proviant")
  ]

require ["data/equipment/proviant"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Proviant für einen Tag")

    weight: 1.5
    costs: 0.5

  equipments.add _.extend {}, S,
    name: __("Eiserne Ration für einen Tag")

    weight: 1
    costs: 0.5


