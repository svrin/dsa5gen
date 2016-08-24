###
  Kampfsonderfertigkeiten

  @version: US25001
  @page: 246ff
###

define "data/skill/capability/battle", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Kampfsonderfertigkeiten")
    __("Sonderfertigkeiten")
  ]

require ["data/skill/capability/battle"], (S) ->
  skills.add _.extend {}, S,
    name: __("Aufmerksamkeit")
    costs: 10

    requirements:
      IN: 13

  skills.add _.extend {}, S,
    name: __("Belastungsgewöhnung")
    max: 2

    costs: (current) ->
      5 + current * 15

    requirements:
      KO: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Beidhändiger Kampf")
    max: 2

    costs: (current) ->
      5 + current * 15

    requirements:
      GE: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Berittener Kampf")
    costs: 20

    requirements:
      [__("Reiten"), 10]

  skills.add _.extend {}, S,
    name: __("Berittener Schütze")
    costs: 10

    requirments:
      [__("Berittener Kampf"), 1]

  skills.add _.extend {}, S,
    name: __("Einhändiger Kampf")
    costs: 10

    requirements:
      GE: 13

  skills.add _.extend {}, S,
    name: __("Entwaffnen")
    costs: 40

    requirements:
      GE: 15

  skills.add _.extend {}, S,
    name: __("Feindgespür")
    costs: 10

    requirements:
      IN: 15

  skills.add _.extend {}, S,
    name: __("Finte")
    max: 3

    costs: (current) ->
      10 + current * 5

    requirements:
      GE: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Haltegriff")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Hammerschlag")
    costs: 25

    requirements: [
      [__("MU"), 15]
      [__("Vorstoß"), 1]
      [__("Wuchtschlag"), 3]
    ]

  skills.add _.extend {}, S,
    name: __("Kampfreflexe")
    max: 3

    costs: (current) ->
      5 + current * 5

    requirements:
      IN: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Klingenfänger")
    costs: 10

    requirements:
      GE: 13

  skills.add _.extend {}, S,
    name: __("Kreuzblock")
    costs: 10

    requirements:
      GE: 13

  skills.add _.extend {}, S,
    name: __("Lanzenangriff")
    costs: 10

    requirements: [
      [__("MU"), 13]
      [__("Berittener Kampf"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Präziser Schuss/Wurf")
    max: 3

    costs: (current) ->
      10 + current * 5

    requirements:
      IN: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Präziser Stich")
    max: 3

    costs: (current) ->
      10 + current * 5

    requirements:
      GE: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Riposte")
    costs: 40

    requirements:
      GE: 15

  skills.add _.extend {}, S,
    name: __("Rundumschlag")
    max: 2

    costs: (current) ->
      15 + current * 10

    requirements:
      GE: (current) ->
        13 + current * 2

  skills.add _.extend {}, S,
    name: __("Schildspalter")
    costs: 15

    requirements: [
      [__("KK"), 13]
      [__("Wuchtschlag"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Schnellladen (Armbrüste)")
    costs: 5

    requirements:
      FF: 13

  skills.add _.extend {}, S,
    name: __("Schnellladen (Bögen)")
    costs: 20

    requirements:
      FF: 13

  skills.add _.extend {}, S,
    name: __("Schnellladen (Wurfwaffen)")
    costs: 10

    requirements:
      FF: 13

  skills.add _.extend {}, S,
    name: __("Schnellziehen")
    costs: 10

    requirements:
      FF: 13

  skills.add _.extend {}, S,
    name: __("Sturmangriff")
    costs: 25

    requirements: [
      [__("MU"), 15]
      [__("Wuchtschlag"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Todesstoß")
    costs: 30

    requirements: [
      [__("MU"), 15]
      [__("Vorstoß"), 1]
      [__("Präziser Stich"), 3]
    ]

  skills.add _.extend {}, S,
    name: __("Verbessertes Ausweichen")
    max: 3

    costs: (current) ->
      10 + current * 5

    requirements:
      Körperbeherschung: (current) ->
        current * 4

  skills.add _.extend {}, S,
    name: __("Verteidigungshaltung")
    costs: 10

    requirements:
      IN: 13

  skills.add _.extend {}, S,
    name: __("Vorstoß")
    costs: 10

    requirements:
      GE: 13

  skills.add _.extend {}, S,
    name: __("Wuchtschlag")
    max: 3

    costs: (current) ->
      10 + current * 5

    requirements:
      KK: (current) ->
        11 + current * 2

  skills.add _.extend {}, S,
    name: __("Wurf")
    costs: 10

    requirements: [
      [__("GE"), 13]
      [__("Haltegriff"), 1]
    ]

  skills.add _.extend {}, S,
    name: __("Zu Fall bringen")
    costs: 20

    requirements:
      KK: 13

