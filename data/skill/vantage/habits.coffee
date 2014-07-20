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
    name: __("Schlechte Eigenschaft (Aberglaube)")
    name_m: __("Aberglaube")
    name_w: __("Aberglaube")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Angst vor ...)")
    name_m: __("Angst vor ...")
    name_w: __("Angst vor ...")
    multiple: "%"
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Arroganz)")
    name_m: __("Arroganz")
    name_w: __("Arroganz")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Autoritätsgläubig)")
    name_m: __("Autoritätsgläubig")
    name_w: __("Autoritätsgläubig")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Blutdurst)")
    name_m: __("Blutdurst")
    name_w: __("Blutdurst")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Brünstigkeit)")
    name_m: __("Brünstigkeit")
    name_w: __("Brünstigkeit")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Dunkelangst)")
    name_m: __("Dunkelangst")
    name_w: __("Dunkelangst")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Eitelkeit)")
    name_m: __("Eitelkeit")
    name_w: __("Eitelkeit")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Geiz)")
    name_m: __("Geiz")
    name_w: __("Geiz")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Gerechtigkeitswahn)")
    name_m: __("Gerechtigkeitswahn")
    name_w: __("Gerechtigkeitswahn")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Goldgier)")
    name_m: __("Goldgier")
    name_w: __("Goldgier")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Größenwahn)")
    name_m: __("Größenwahn")
    name_w: __("Größenwahn")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Heimwehkrank)")
    name_m: __("Heimwehkrank")
    name_w: __("Heimwehkrank")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Höhenangst)")
    name_m: __("Höhenangst")
    name_w: __("Höhenangst")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Impulsiv)")
    name_m: __("Impulsiv")
    name_w: __("Impulsiv")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Jähzorn)")
    name_m: __("Jähzorn")
    name_w: __("Jähzorn")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Kleptomanie)")
    name_m: __("Kleptomanie")
    name_w: __("Kleptomanie")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Krankhafte Reinlichkeit)")
    name_m: __("Krankhafte Reinlichkeit")
    name_w: __("Krankhafte Reinlichkeit")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Meeresangst)")
    name_m: __("Meeresangst")
    name_w: __("Meeresangst")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Neid)")
    name_m: __("Neid")
    name_w: __("Neid")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Neugier)")
    name_m: __("Neugier")
    name_w: __("Neugier")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Platzangst)")
    name_m: __("Platzangst")
    name_w: __("Platzangst")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Rachsucht)")
    name_m: __("Rachsucht")
    name_w: __("Rachsucht")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Raumangst)")
    name_m: __("Raumangst")
    name_w: __("Raumangst")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Sensibler Geruchssinn)")
    name_m: __("Sensibler Geruchssinn")
    name_w: __("Sensibler Geruchssinn")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Spielsucht)")
    name_m: __("Spielsucht")
    name_w: __("Spielsucht")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Streitsucht)")
    name_m: __("Streitsucht")
    name_w: __("Streitsucht")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Totenangst)")
    name_m: __("Totenangst")
    name_w: __("Totenangst")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Unstet)")
    name_m: __("Unstet")
    name_w: __("Unstet")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Verschwendungssucht)")
    name_m: __("Verschwendungssucht")
    name_w: __("Verschwendungssucht")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Verwöhnt)")
    name_m: __("Verwöhnt")
    name_w: __("Verwöhnt")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Vorurteile)")
    name_m: __("Vorurteile")
    name_w: __("Vorurteile")
    multiple: "%"
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Wahnvorstellungen)")
    name_m: __("Wahnvorstellungen")
    name_w: __("Wahnvorstellungen")
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Weltfremd)")
    name_m: __("Weltfremd")
    name_w: __("Weltfremd")

