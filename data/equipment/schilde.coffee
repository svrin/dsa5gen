define "data/equipment/schilde", [], () ->
  groups: [
    __("Ausrüstung")
    __("Schilde")
  ]

require ["data/equipment/schilde"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Bock")

    bonus:
      at: 1
      pa: 1

    weight: 3
    costs: 80

  equipments.add _.extend {}, S,
    name: __("Buckler")

    bonus:
      at: 1
      pa: 1

    weight: 1
    costs: 40

  equipments.add _.extend {}, S,
    name: __("Drachenklaue")

    bonus:
      at: 1
      pa: 1

    weight: 5
    costs: 350

  equipments.add _.extend {}, S,
    name: __("Großschild")

    bonus:
      at: 3
      pa: 3

    weight: 5
    costs: 100

  equipments.add _.extend {}, S,
    name: __("Holzschild")

    bonus:
      at: 2
      pa: 2

    weight: 3.5
    costs: 40

  equipments.add _.extend {}, S,
    name: __("Lederschild")

    bonus:
      at: 2
      pa: 2

    weight: 2
    costs: 30

  equipments.add _.extend {}, S,
    name: __("Mattenschild")

    bonus:
      at: 2
      pa: 2

    weight: 2.5
    costs: 60

  equipments.add _.extend {}, S,
    name: __("Panzerarm")

    bonus:
      at: 1
      pa: 1

    weight: 5.5
    costs: 140

  equipments.add _.extend {}, S,
    name: __("Reiterschild")

    bonus:
      at: 2
      pa: 2

    weight: 5
    costs: 100

  equipments.add _.extend {}, S,
    name: __("Thorwalerschild")

    bonus:
      at: 2
      pa: 2

    weight: 4.5
    costs: 60

  equipments.add _.extend {}, S,
    name: __("Turmschild")

    bonus:
      at: 4
      pa: 4

    weight: 7
    costs: 120