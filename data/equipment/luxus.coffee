define "data/equipment/luxus", [], () ->
  groups: [
    __("Ausrüstung")
    __("Genussmittel und Luxus")
  ]

require ["data/equipment/luxus"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Banner")

    weight: 1.5
    costs: 18

  equipments.add _.extend {}, S,
    name: __("Brennglas")

    weight: 0.1
    costs: 40

  equipments.add _.extend {}, S,
    name: __("Brettspiel")

    weight: 1
    costs: 8

  equipments.add _.extend {}, S,
    name: __("Gemälde (Öl auf Leinwand)")

    weight: 1.5
    costs: 70

  equipments.add _.extend {}, S,
    name: __("Götterfigürchen")

    weight: 0.2
    costs: 1

  equipments.add _.extend {}, S,
    name: __("Handspiegel (poliertes Messing)")

    weight: 0.5
    costs: 12

  equipments.add _.extend {}, S,
    name: __("Handspiegel (versilbertes Glas)")

    weight: 0.5
    costs: 50

  equipments.add _.extend {}, S,
    name: __("Jonglierball")

    weight: 0.2
    costs: 0.5

  equipments.add _.extend {}, S,
    name: __("Karaffe aus Neethaner Glas")

    weight: 0.5
    costs: 20

  equipments.add _.extend {}, S,
    name: __("Kristallkugel")

    weight: 1.5
    costs: 300


  equipments.add _.extend {}, S,
    name: __("Lupe")

    weight: 0.1
    costs: 80


  equipments.add _.extend {}, S,
    name: __("Meerschaumpfeife")

    weight: 0.1
    costs: 10


  equipments.add _.extend {}, S,
    name: __("Pokal (Silber)")

    weight: 0.25
    costs: 10


  equipments.add _.extend {}, S,
    name: __("Spielkarten")

    weight: 0.25
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Spieluhr")

    weight: 0.25
    costs: 400


  equipments.add _.extend {}, S,
    name: __("Statuette (Silber) (1 Spann)")

    weight: 0.5
    costs: 30


  equipments.add _.extend {}, S,
    name: __("Steckenpferd")

    weight: 1
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Stoffpuppe")

    weight: 0.25
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Tabakdose (Silber)")

    weight: 0.05
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Tabakspfeife")

    weight: 0.1
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Tabakspfeife (Holz)")

    weight: 0.1
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Taschentuch (Leinen)")

    weight: 2
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Teppich (1 Rechtschritt)")

    weight: 4
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Wasserpfeife")

    weight: 1
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Würfel (10 Stück)")

    weight: 0.25
    costs: 6


  equipments.add _.extend {}, S,
    name: __("Zinnsoldat")

    weight: 0.05
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Zinsspindel")

    weight: 4
    costs: 6000

