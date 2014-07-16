define "data/skill/magic/familiar", [], () ->
  min: 0
  max: 1

  groups: [
    __("Vertrautenmagie")
  ]

require ["data/skill/magic/familiar"], (S) ->
  skills.add _.extend {}, S,
    name: __("Dinge erspüren")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Erster unter Gleichen")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Fluchbote")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Hexensinn")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Krötengift")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Krötenschlag")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Schlaf rauben")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Stimmungssinn")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Tarnung")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Tiersinne")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Ungesehener Beobachter")
    costs: 10

  skills.add _.extend {}, S,
    name: __("Zwiegespräch")
    costs: 0