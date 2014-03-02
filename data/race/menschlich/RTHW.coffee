###
  Thorwaler
###

races.add [
  name: __("Thorwaler")
  name_m: __("Thorwaler")
  name_w: __("Thorwalerin")

  costs: 5

  profile:
    hair: [
      [__("blond"), 1, 8]
      [__("rotblond"), 9, 13]
      [__("weißblond"), 14, 15]
      [__("rot"), 16, 17]
      [__("dunkelblond"), 18]
      [__("braun"), 19]
      [__("schwarz"), 20]
    ]
    eye: [
      [__("dunkelbraun"), 1, 2]
      [__("braun"), 3, 7]
      [__("grün"), 8, 11]
      [__("blau"), 12, 18]
      [__("grau"), 19, 20]
    ]
    height: [168, 2, 20]
    weight: ->
      this.get('profile')['height'] - 95

  attributes:
    MU: 1
    KO: 1
    KK: 1
    LeP: 11
    AuP: 10
    MR: -5

  vantages:
    auto: [
      [__("Jähzorn"), 6]
    ]
    recommended: [
      __("Ausdauernd")
      __("Eisern")
      __("Hohe Lebenskraft")
      __("Kampfrausch")
      __("Richtungssinn")
      __("Zäher Hund")
      __("Blutrausch")
    ]
    uncommon: [
      __("Herausragende Balance")
      __("Glasknochen")
      __("Nahrungsrestriktion")
    ]
    reduced: []

  skills: [
    [__("Athletik"), 1]
    [__("Sinnesschärfe"), 1]
    [__("Zechen"), 1]
    [__("Wettervorhersage"), 1]
  ]

  cultures: [
    __("Thorwal")
    __("Mittelländische Städte")
    __("Andergast/Nostria")
    __("Südaventurien")
  ]
]




