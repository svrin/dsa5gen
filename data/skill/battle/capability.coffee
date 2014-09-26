define "data/skill/capability/battle", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Sonderfertigkeiten")
    __("Kampfsonderfertigkeiten")
  ]

require ["data/skill/capability/battle"], (S) ->
  skills.add _.extend {}, S,
    name: __("Aufmerksamkeit")
    costs: 25

    requirements:
      IN: 13

  skills.add _.extend {}, S,
    name: __("Ausfall")
    costs: 25

    requirments:
      [__("Offensiver Kampfstil"), 1]

  skills.add _.extend {}, S,
    name: __("Ausweiden")
    costs: 25

  skills.add _.extend {}, S,
    name: __("Behinderungsgewöhnung")
    costs: 20
    max: 2

    requirements:
      KK: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Beidhändiger Kampf")
    costs: 30
    max: 2

  skills.add _.extend {}, S,
    name: __("Berittener Schütze")
    costs: 50

    requirments:
      [__("Reiterkampf"), 1]

  skills.add _.extend {}, S,
    name: __("Defensiver Kampfstil")
    costs: 40
    max: 2

    requirements:
      IN: (current) ->
        13 + current * 2

  skills.add _.extend {}, S,
    name: __("Eisenarm")
    costs: 10
    max: 2

    requirements:
      KK: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Entwaffnen")
    costs: 10

    requirements:
      GE: 15

  skills.add _.extend {}, S,
    name: __("Festhalten")
    costs: 0

  skills.add _.extend {}, S,
    name: __("Finte")
    costs: 50

    requirements:
      GE: 11

  skills.add _.extend {}, S,
    name: __("Gegenhalten")
    costs: 50

    requirements: [
      [__("MU"), 15]
      [__("Meisterparade"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Geschosshagel")
    costs: 30
    max: 2

    requirements:
      FF: (current) ->
        13 + current * 2

  skills.add _.extend {}, S,
    name: __("Gezielter Angriff")
    costs: 20

    requirements:
      GE: 13

  skills.add _.extend {}, S,
    name: __("Gezielter Schuss")
    costs: 20

    requirements:
      FF: 13

  skills.add _.extend {}, S,
    name: __("Gezielter Stich")
    costs: 25

    requirements: [
      [__("GE"), 15]
      [__("Gezielter Angriff"), 1]
      [__("Finte"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Halbschwert")
    costs: 20

    requirements:
      MU: 13
      GE: 13

  skills.add _.extend {}, S,
    name: __("Hammerschlag")
    costs: 100

    requirements: [
      [__("MU"), 15]
      [__("KK"), 17]
      [__("Wuchtschlag"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Improvisierte Waffen")
    costs: 10
    max: 2

    requirements:
      IN: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Kampfreflexe")
    costs: 30
    max: 2

    requirements:
      IN: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Kreuzblock")
    costs: 15

    requirements:
      GE: 13

  skills.add _.extend {}, S,
    name: __("Meisterparade")
    costs: 50

    requirements:
      IN: 11

  skills.add _.extend {}, S,
    name: __("Niederwerfen")
    costs: 50

    requirements: [
      [__("KK"), 13]
      [__("Wuchtschlag"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Offensiver Kampfstil")
    costs: 100
    max: 2

    requirements:
      GE: (current) ->
        13 + current * 2

  skills.add _.extend {}, S,
    name: __("Reiterkampf")
    costs: 30

    requirements: [
      [__("Reiten"), 10]
    ]

  skills.add _.extend {}, S,
    name: __("Riposte")
    costs: 75

    requirements:
      GE: 13

  skills.add _.extend {}, S,
    name: __("Rundumschlag")
    costs: 75
    max: 2

    requirements:
      GE: (current) ->
        13 + current * 2

  skills.add _.extend {}, S,
    name: __("Scharfschütze")
    costs: 50

    requirements:
      FF: 15
      IN: 15

  skills.add _.extend {}, S,
    name: __("Schildspalter")
    costs: 25

    requirements: [
      [__("KK"), 15]
      [__("Wuchtschlag"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Schnellladen")
    costs: 20

    requirements:
      FF: 13

  skills.add _.extend {}, S,
    name: __("Schnellziehen")
    costs: 15

    requirements:
      FF: 13

  skills.add _.extend {}, S,
    name: __("Sturmangriff")
    costs: 50

    requirements: [
      [__("MU"), 15]
      [__("Wuchtschlag"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Todesstoß")
    costs: 100

    requirements: [
      [__("GE"), 17]
      [__("Gezielter Stich"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Tod von Links")
    costs: 75

    requirements: [
      [__("Beidhändiger Kampf"), 1]
      [__("Offensiver Kampfstil"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Wasserkampf")
    costs: 15

    requirements: [
      [__("Schwimmen"), 10]
    ]

  skills.add _.extend {}, S,
    name: __("Wuchtschlag")
    costs: 50

    requirements:
      KK: 11

  skills.add _.extend {}, S,
    name: __("Wurf")
    costs: 0

    requirements:
      GE: 13

