define "data/equipment/ruestung", [], () ->
  groups: [
    __("Ausrüstung")
    __("Rüstung")
  ]

require ["data/equipment/ruestung"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Gambeson")

    bonus:
      rs: 2
      be: 1

    weight: 3
    costs: 40

  equipments.add _.extend {}, S,
    name: __("Gestechrüstung")

    bonus:
      rs: 7
      be: 4

    weight: 30
    costs: 2500

  equipments.add _.extend {}, S,
    name: __("Reiterharnisch")

    bonus:
      rs: 7
      be: 4

    weight: 17
    costs: 1000

  equipments.add _.extend {}, S,
    name: __("Iryanrüstung")

    bonus:
      rs: 3
      be: 2

    weight: 3.5
    costs: 125

  equipments.add _.extend {}, S,
    name: __("Kettenhemd")

    bonus:
      rs: 4
      be: 2

    weight: 10
    costs: 150

  equipments.add _.extend {}, S,
    name: __("Kettenmantel")

    bonus:
      rs: 4
      be: 2

    weight: 12
    costs: 500

  equipments.add _.extend {}, S,
    name: __("Kettenweste")

    bonus:
      rs: 4
      be: 2

    weight: 5
    costs: 100

  equipments.add _.extend {}, S,
    name: __("Krötenhaut")

    bonus:
      rs: 3
      be: 2

    weight: 4
    costs: 60

  equipments.add _.extend {}, S,
    name: __("Kürass")

    bonus:
      rs: 4
      be: 2

    weight: 4
    costs: 110

  equipments.add _.extend {}, S,
    name: __("Lamellar")

    bonus:
      rs: 4
      be: 2

    weight: 7.5
    costs: 500

  equipments.add _.extend {}, S,
    name: __("Lederrüstung")

    bonus:
      rs: 3
      be: 2

    weight: 4.5
    costs: 70

  equipments.add _.extend {}, S,
    name: __("Plattenrüstung")

    bonus:
      rs: 7
      be: 4

    weight: 7.5
    costs: 250

  equipments.add _.extend {}, S,
    name: __("Mammutonpanzer")

    bonus:
      rs: 5
      be: 3

    weight: 6
    costs: 1500

  equipments.add _.extend {}, S,
    name: __("Hartholzharnisch")

    bonus:
      rs: 4
      be: 2

    weight: 7
    costs: 1200

  equipments.add _.extend {}, S,
    name: __("Ringelpanzer")

    bonus:
      rs: 4
      be: 2

    weight: 7
    costs: 550

  equipments.add _.extend {}, S,
    name: __("Ringmantel")

    bonus:
      rs: 4
      be: 2

    weight: 9
    costs: 180

  equipments.add _.extend {}, S,
    name: __("Schuppenpanzer")

    bonus:
      rs: 5
      be: 3

    weight: 18
    costs: 1200

  equipments.add _.extend {}, S,
    name: __("Spiegelpanzer")

    bonus:
      rs: 4
      be: 2

    weight: 10
    costs: 1000

  equipments.add _.extend {}, S,
    name: __("Tuchrüstung")

    bonus:
      rs: 2
      be: 1

    weight: 2.5
    costs: 50