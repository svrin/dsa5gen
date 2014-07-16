###
  Schlechte Angewohnheiten / Schlechte Eigenschaften
###

define "data/vantage/habit/vice", [], () ->
  min: 0
  max: 1
  count: "roman"
  costs: -5

  groups: [
    __("Schlechte Angewohnheiten")
  ]

require ["data/vantage/habit/vice"], (S) ->
  skills.add _.extend {}, S,
    name: __("Barfüssler")
    alias: [__("Barfüssler")]
  skills.add _.extend {}, S,
    name: __("Belästigung")
  skills.add _.extend {}, S,
    name: __("Erster")
  skills.add _.extend {}, S,
    name: __("Fingernägelkauen")
  skills.add _.extend {}, S,
    name: __("Heulsuse")
  skills.add _.extend {}, S,
    name: __("Junge")
  skills.add _.extend {}, S,
    name: __("Linksrechtsschwäche")
  skills.add _.extend {}, S,
    name: __("Nase-/Ohrenbohrer")
  skills.add _.extend {}, S,
    name: __("Nervös")
  skills.add _.extend {}, S,
    name: __("Putzfimmel")
  skills.add _.extend {}, S,
    name: __("Raucher")
  skills.add _.extend {}, S,
    name: __("Redet wie ein Wasserfall")
  skills.add _.extend {}, S,
    name: __("Schlechte Tischmanieren")
  skills.add _.extend {}, S,
    name: __("Selbstgespräche")
  skills.add _.extend {}, S,
    name: __("Unordentlich")

define "data/vantage/habit/quality", [], () ->
  min: 0
  max: 12
  costs: -1

  groups: [
    __("Schlechte Eigenschaft")
  ]

require ["data/vantage/habit/quality"], (S) ->
  skills.add _.extend {}, S,
    name: __("Aberglaube")
  skills.add _.extend {}, S,
    name: __("Angst vor ...")
  skills.add _.extend {}, S,
    name: __("Arroganz")
  skills.add _.extend {}, S,
    name: __("Autoritätsgläubig")
  skills.add _.extend {}, S,
    name: __("Blutdurst")
  skills.add _.extend {}, S,
    name: __("Brünstigkeit")
  skills.add _.extend {}, S,
    name: __("Dunkelangst")
  skills.add _.extend {}, S,
    name: __("Eitelkeit")
  skills.add _.extend {}, S,
    name: __("Geiz")
  skills.add _.extend {}, S,
    name: __("Gerechtigkeitswahn")
  skills.add _.extend {}, S,
    name: __("Goldgier")
  skills.add _.extend {}, S,
    name: __("Größenwahn")
  skills.add _.extend {}, S,
    name: __("Heimwehkrank")
  skills.add _.extend {}, S,
    name: __("Höhenangst")
  skills.add _.extend {}, S,
    name: __("Impulsiv")
  skills.add _.extend {}, S,
    name: __("Jähzorn")
  skills.add _.extend {}, S,
    name: __("Kleptomanie")
  skills.add _.extend {}, S,
    name: __("Krankhafte Reinlichkeit")
  skills.add _.extend {}, S,
    name: __("Meeresangst")
  skills.add _.extend {}, S,
    name: __("Neid")
  skills.add _.extend {}, S,
    name: __("Neugier")
  skills.add _.extend {}, S,
    name: __("Platzangst")
  skills.add _.extend {}, S,
    name: __("Rachsucht")
  skills.add _.extend {}, S,
    name: __("Raumangst")
  skills.add _.extend {}, S,
    name: __("Sensibler Geruchssinn")
  skills.add _.extend {}, S,
    name: __("Spielsucht")
  skills.add _.extend {}, S,
    name: __("Streitsucht")
  skills.add _.extend {}, S,
    name: __("Totenangst")
  skills.add _.extend {}, S,
    name: __("Unstet")
  skills.add _.extend {}, S,
    name: __("Verschwendungssucht")
  skills.add _.extend {}, S,
    name: __("Verwöhnt")
  skills.add _.extend {}, S,
    name: __("Vorurteile")
  skills.add _.extend {}, S,
    name: __("Wahnvorstellungen")
  skills.add _.extend {}, S,
    name: __("Weltfremd")

