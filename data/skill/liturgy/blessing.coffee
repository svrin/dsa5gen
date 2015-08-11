###
  Segnungen

  @version: US25001
  @page: 322-323
###

define "data/skill/liturgy/blessing", [], () ->
  min: 0
  max: 1
  count: "roman"

  costs: 1
  BE: true

  groups: [
    __("Segnungen"),
    __("Aspekt (allgemein)")
  ]

require ["data/skill/liturgy/blessing"], (S) ->
  skills.add _.extend {}, S,
    name: __("Eidsegen")

  skills.add _.extend {}, S,
    name: __("Feuersegen")

  skills.add _.extend {}, S,
    name: __("Geburtssegen")

  skills.add _.extend {}, S,
    name: __("Glückssegen")

  skills.add _.extend {}, S,
    name: __("Grabsegen")

  skills.add _.extend {}, S,
    name: __("Harmoniesegen")

  skills.add _.extend {}, S,
    name: __("Kleiner Heilsegen")

  skills.add _.extend {}, S,
    name: __("Kleiner Schutzsegen")

  skills.add _.extend {}, S,
    name: __("Speisesegen")

  skills.add _.extend {}, S,
    name: __("Tranksegen")

  skills.add _.extend {}, S,
    name: __("Weisheitssegen")