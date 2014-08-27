define "data/equipment/beleuchtung", [], () ->
  groups: [
    __("Ausrüstung")
    __("Verbandszeug und Heilmittel")
  ]

require ["data/equipment/beleuchtung"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Absaugröhrchen für Gift")

    weight: 0.05
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Anatomiewerkzeug")

    weight: 1.5
    costs: 100


  equipments.add _.extend {}, S,
    name: __("10 Portionen Brechmittel bei Vergiftung")

    weight: 0.25
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Chirurgiewerkzeug")

    weight: 0.5
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Schiene")

    weight: 0.25
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("10 Stück Verband")

    weight: 0.05
    costs: 1


  equipments.add _.extend {}, S,
    name: __("10 Stück Verband mit Mastix für eine Behandlung")

    weight: 0.25
    costs: 10


  equipments.add _.extend {}, S,
    name: __("Wundnähzeug")

    weight: 0.05
    costs: 15