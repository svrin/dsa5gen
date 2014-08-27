define "data/equipment/beleuchtung", [], () ->
  groups: [
    __("Ausrüstung")
    __("Beleuchtung")
  ]

require ["data/equipment/beleuchtung"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Feuerstein und Stahl")

    weight: 0.1
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Kerzenständer")

    weight: 0.75
    costs: 4


  equipments.add _.extend {}, S,
    name: __("Lampenöl")

    weight: 0.25
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("50 Portionen Zunder")

    weight: 0.05
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Zunderdose")

    weight: 0.2
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Zunderdose (wasserdicht)")

    weight: 0.25
    costs: 7


