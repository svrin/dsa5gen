###
  Mittelländer
###

races.add [
  name: __("Mittelländer")

  costs: 0

  profile:
    hair: [
      [__("schwarz"), 1, 3]
      [__("braun"), 4, 7]
      [__("dunkelblond"), 8, 12]
      [__("blond"), 13, 16]
      [__("weißblond"), 17, 18]
      [__("rot"), 19, 20]
    ]
    eye: [
      [__("dunkelbraun"), 1, 2]
      [__("braun"), 3, 9]
      [__("grün"), 10, 11]
      [__("blau"), 12, 17]
      [__("grau"), 18, 19]
      [__("schwarz"), 20]
    ]
    height: [160, 2, 20]
    weight: ->
      char.profile.height - 100

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
    __("Mittelländische Städte")
    __("Andergast/Nostria")
    __("Bornland")
    __("Horasreich")
    __("Südaventurien")
  ]
]




