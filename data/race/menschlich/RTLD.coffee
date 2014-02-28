###
  Tulamiden
###

races.add [
  name: __("Tulamiden")

  costs: 0

  profile:
    hair: [
      [__("schwarz"), 1, 6]
      [__("dunkelbraun"), 7, 12]
      [__("mittelbraun"), 13, 14]
      [__("hellbraun"), 15, 17]
      [__("blond"), 18, 19]
      [__("rot"), 20]
    ]
    eye: [
      [__("schwarz"), 1, 4]
      [__("dunkelbraun"), 5, 12]
      [__("braun"), 13, 16]
      [__("grau"), 17, 18]
      [__("grün"), 19]
      [__("blau"), 20]
    ]
    height: [155, 2, 20]
    weight: ->
      char.profile.height - 105

  attributes:
    LeP: 10
    AuP: 10
    MR: -4

  vantages:
    auto: []
    recommended: []
    uncommon: [
      __("Herausragende Balance"),
      __("Nahrungsrestriktion")
    ]
    reduced: []

  skills: []

  cultures: [
    __("Tulamidische Stadtstaaten")
    __("Novadis")
    __("Südaventurien")
  ]
]




