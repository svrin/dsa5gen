###
  Schlechte Angewohnheiten / Schlechte Eigenschaft

  @version: US25001
  @page: 167 (Magische Einstimmung)
  @page: 173 (Magische Einschränkung)
  @page: 174 (Persöhnlichkeitsschwächen)
  @page: 176 (Schlechte Angewohnheiten)
  @page: 177 (Schlechte Eigenschaft)
###

define "data/vantage/habit/attunement", [], () ->
  min: 0
  max: 1
  count: "roman"
  costs: 40

  groups: [
    __("Magische Einstimmung")
  ]

  required: [
    [__("Zauberer"), 1]
  ]

require ["data/vantage/habit/attunement"], (S) ->
  skills.add _.extend {}, S,
    name: __("Magische Einstimmung (Wesen der Auen)")
    name_m: __("Wesen der Auen")
    name_w: __("Wesen der Auen")
  skills.add _.extend {}, S,
    name: __("Magische Einstimmung (Wesen der Berge)")
    name_m: __("Wesen der Berge")
    name_w: __("Wesen der Berge")
  skills.add _.extend {}, S,
    name: __("Magische Einstimmung (Wesen des Eises)")
    name_m: __("Wesen des Eises")
    name_w: __("Wesen des Eises")
  skills.add _.extend {}, S,
    name: __("Magische Einstimmung (Wesen der Meere)")
    name_m: __("Wesen der Meere")
    name_w: __("Wesen der Meere")
  skills.add _.extend {}, S,
    name: __("Magische Einstimmung (Wesen der Nacht)")
    name_m: __("Wesen der Nacht")
    name_w: __("Wesen der Nacht")
  skills.add _.extend {}, S,
    name: __("Magische Einstimmung (Wesen des Waldes)")
    name_m: __("Wesen des Waldes")
    name_w: __("Wesen des Waldes")

define "data/vantage/habit/restriction", [], () ->
  min: 0
  max: 1
  count: "roman"
  costs: -30

  groups: [
    __("Magische Einschränkung")
  ]

  required: [
    [__("Zauberer"), 1]
  ]

require ["data/vantage/habit/restriction"], (S) ->
  skills.add _.extend {}, S,
    name: __("Magische Einschränkung (Fluch der Auen)")
    name_m: __("Fluch der Auen")
    name_w: __("Fluch der Auen")
  skills.add _.extend {}, S,
    name: __("Magische Einschränkung (Fluch der Berge)")
    name_m: __("Fluch der Berge")
    name_w: __("Fluch der Berge")
  skills.add _.extend {}, S,
    name: __("Magische Einschränkung (Fluch des Eises)")
    name_m: __("Fluch des Eises")
    name_w: __("Fluch des Eises")
  skills.add _.extend {}, S,
    name: __("Magische Einschränkung (Fluch der Meere)")
    name_m: __("Fluch der Meere")
    name_w: __("Fluch der Meere")
  skills.add _.extend {}, S,
    name: __("Magische Einschränkung (Fluch der Nacht)")
    name_m: __("Fluch der Nacht")
    name_w: __("Fluch der Nacht")
  skills.add _.extend {}, S,
    name: __("Magische Einschränkung (Fluch des Waldes)")
    name_m: __("Fluch des Waldes")
    name_w: __("Fluch des Waldes")
  skills.add _.extend {}, S,
    name: __("Magische Einschränkung (Fluch der Helligkeit)")
    name_m: __("Fluch der Helligkeit")
    name_w: __("Fluch der Helligkeit")

define "data/vantage/habit/character", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Persönlichkeitsschwächen")
  ]

require ["data/vantage/habit/character"], (S) ->
  skills.add _.extend {}, S,
    name: __("Persönlichkeitsschwäche (Arroganz)")
    name_m: __("Arroganz")
    name_w: __("Arroganz")
    costs: -10
  skills.add _.extend {}, S,
    name: __("Persönlichkeitsschwäche (Eitelkeit)")
    name_m: __("Eitelkeit")
    name_w: __("Eitelkeit")
    costs: -10
  skills.add _.extend {}, S,
    name: __("Persönlichkeitsschwäche (Neid)")
    name_m: __("Neid")
    name_w: __("Neid")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Persönlichkeitsschwäche (Streitsucht)")
    name_m: __("Streitsucht")
    name_w: __("Streitsucht")
    costs: -10
  skills.add _.extend {}, S,
    name: __("Persönlichkeitsschwäche (Unheimlich)")
    name_m: __("Unheimlich")
    name_w: __("Unheimlich")
    costs: -8
  skills.add _.extend {}, S,
    name: __("Persönlichkeitsschwäche (Verwöhnt)")
    name_m: __("Verwöhnt")
    name_w: __("Verwöhnt")
    costs: -10
  skills.add _.extend {}, S,
    name: __("Persönlichkeitsschwäche (Vorurteile)")
    name_m: __("Vorurteile")
    name_w: __("Vorurteile")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Persönlichkeitsschwäche (Weltfremd)")
    name_m: __("Weltfremd")
    name_w: __("Weltfremd")
    costs: -10



define "data/vantage/habit/vice", [], () ->
  min: 0
  max: 1
  count: "roman"
  costs: -2

  groups: [
    __("Schlechte Angewohnheiten")
  ]

require ["data/vantage/habit/vice"], (S) ->
  skills.add _.extend {}, S,
    name: __("Barfüssler")
  skills.add _.extend {}, S,
    name: __("Belästigung")
  skills.add _.extend {}, S,
    name: __("Dritte Person")
  skills.add _.extend {}, S,
    name: __("Duzer")
  skills.add _.extend {}, S,
    name: __("Erster")
  skills.add _.extend {}, S,
    name: __("Fingernägelkauen")
  skills.add _.extend {}, S,
    name: __("Heulsuse")
  skills.add _.extend {}, S,
    name: __("Hypochonder")
  skills.add _.extend {}, S,
    name: __("Junge")
  skills.add _.extend {}, S,
    name: __("Langschläfer")
  skills.add _.extend {}, S,
    name: __("Links-Rechts-Schwäche")
  skills.add _.extend {}, S,
    name: __("Mein Kind")
  skills.add _.extend {}, S,
    name: __("Nägelkauer")
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
  skills.add _.extend {}, S,
    name: __("Wir")

define "data/vantage/habit/quality", [], () ->
  min: 0
  max: 1

  groups: [
    __("Schlechte Eigenschaften")
  ]

require ["data/vantage/habit/quality"], (S) ->
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Aberglaube)")
    name_m: __("Aberglaube")
    name_w: __("Aberglaube")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Autoritätsgläubig)")
    name_m: __("Autoritätsgläubig")
    name_w: __("Autoritätsgläubig")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Geiz)")
    name_m: __("Geiz")
    name_w: __("Geiz")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Goldgier)")
    name_m: __("Goldgier")
    name_w: __("Goldgier")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Jähzorn)")
    name_m: __("Jähzorn")
    name_w: __("Jähzorn")
    costs: -10
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Kleptomanie)")
    name_m: __("Kleptomanie")
    name_w: __("Kleptomanie")
    costs: -10
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Naiv)")
    name_m: __("Naiv")
    name_w: __("Naiv")
    costs: -10
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Neugier)")
    name_m: __("Neugier")
    name_w: __("Neugier")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Rachsucht)")
    name_m: __("Rachsucht")
    name_w: __("Rachsucht")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Spielsucht)")
    name_m: __("Spielsucht")
    name_w: __("Spielsucht")
    costs: -5
  skills.add _.extend {}, S,
    name: __("Schlechte Eigenschaft (Verschwendungssucht)")
    name_m: __("Verschwendungssucht")
    name_w: __("Verschwendungssucht")
    costs: -5

