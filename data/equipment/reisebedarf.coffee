define "data/equipment/reisebedarf", [], () ->
  groups: [
    __("Ausrüstung")
    __("Reisebedarf")
  ]

require ["data/equipment/reisebedarf"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Angel mit 10 Schritt Angelschnur")

    weight: 0.5
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Besteck (Messing)")

    weight: 0.25
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Bratspieß (Eisen)")

    weight: 3
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Decke (Fell)")

    weight: 2.5
    costs: 8


  equipments.add _.extend {}, S,
    name: __("Decke (Wolle)")

    weight: 1.5
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Fackel")

    weight: 0.75
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Hängematte")

    weight: 2
    costs: 13


  equipments.add _.extend {}, S,
    name: __("Nadel- und Zwirnset")

    weight: 0.1
    costs: 8


  equipments.add _.extend {}, S,
    name: __("Schlafsack")

    weight: 2
    costs: 10


  equipments.add _.extend {}, S,
    name: __("Schneeschuhe")

    weight: 1
    costs: 12


  equipments.add _.extend {}, S,
    name: __("Skier")

    weight: 2
    costs: 20


  equipments.add _.extend {}, S,
    name: __("1 Schritt Strickleiter")

    weight: 0.5
    costs: 2.5


  equipments.add _.extend {}, S,
    name: __("Zelt für 1 Person")

    weight: 3
    costs: 35


  equipments.add _.extend {}, S,
    name: __("Zelt für 2 Personen")

    weight: 15
    costs: 40


  equipments.add _.extend {}, S,
    name: __("Zelt für 4 Personen")

    weight: 22.5
    costs: 50




