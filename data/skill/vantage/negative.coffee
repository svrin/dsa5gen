###
  Nachteile
###

define "data/vantage/negative", [], () ->
  min: 0
  max: 1
  count: "roman"

  groups: [
    __("Nachteile")
  ]

require ["data/vantage/negative"], (S) ->
  skills.add _.extend {}, S,
    name: __("Artefaktgebunden")
    costs: -30
    max: 3

  skills.add _.extend {}, S,
    name: __("Auffällig")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Behäbig")
    costs: -20
    max: 3

  skills.add _.extend {}, S,
    name: __("Blind")
    costs: -100

  skills.add _.extend {}, S,
    name: __("Blutrausch")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Eingeschränkte Elementarnähe")
    costs: -5
    restricted: true
    multiple: "Element"

  skills.add _.extend {}, S,
    name: __("Eingeschränkter Sinn (Gehör)")
    costs: -30

  skills.add _.extend {}, S,
    name: __("Eingeschränkter Sinn (Sicht)")
    costs: -30

  skills.add _.extend {}, S,
    name: __("Eingeschränkter Sinn (Geruch & Geschmack)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Eingeschränkter Sinn (Tastsinn)")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Farbenblind")
    costs: -5

  skills.add _.extend {}, S,
    name: __("Fettleibig")
    costs: -50

  skills.add _.extend {}, S,
    name: __("Giftanfällig")
    costs: -50

  skills.add _.extend {}, S,
    name: __("Glasknochen")
    costs: -20
    max: 3
    auto: [
      ["WS", -1]
    ]

  skills.add _.extend {}, S,
    name: __("Hässlich")
    costs: -20
    max: 3

  skills.add _.extend {}, S,
    name: __("Hitzeempfindlichkeit")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Kälteempfindlichkeit")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Kein Vertrauter")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Kind der Wildnis")
    costs: -25

  skills.add _.extend {}, S,
    name: __("Körpergebundene Kraft")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Krankheitsanfällig")
    costs: -30

  skills.add _.extend {}, S,
    name: __("Lästige Mindergeister")
    costs: -5
    max: 3

  skills.add _.extend {}, S,
    name: __("Lichtempfindlich")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Magieblockade")
    costs: -20
    max: 3

  skills.add _.extend {}, S,
    name: __("Magische Einschränkung")
    costs: -15
    max: 3

  skills.add _.extend {}, S,
    name: __("Medium")
    costs: 5

  skills.add _.extend {}, S,
    name: __("Nachtblind")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Niedrige Astralkraft")
    costs: -10
    max: 3
    auto: [
      ["AE", -10]
    ]

  skills.add _.extend {}, S,
    name: __("Niedrige Karmalkraft")
    costs: -10
    max: 3
    auto: [
      ["KE", -10]
    ]

  skills.add _.extend {}, S,
    name: __("Niedrige Lebenskraft")
    costs: -10
    max: 3
    auto: [
      ["LE", -10]
    ]

  skills.add _.extend {}, S,
    name: __("Niedrige Magieresistenz")
    costs: 10
    max: 3
    auto: [
      ["MR", -1]
    ]

  skills.add _.extend {}, S,
    name: __("Pech")
    costs: -25
    max: 3
    auto: [
      ["EDG", -1]
    ]

  skills.add _.extend {}, S,
    name: __("Pechmagnet")
    costs: -25

  skills.add _.extend {}, S,
    name: __("Praktiker")
    costs: -5
    multiple: "Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Prinzipientreue")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Rückschlag")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Schlafwandler")
    costs: -10

  skills.add _.extend {}, S,
    name: __("Schlechte Regeneration (Astralenergie)")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Schlechte Regeneration (Karmaenergie)")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Schlechte Regeneration (Lebensenergie)")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Schnelle Alterung")
    costs: -5

  skills.add _.extend {}, S,
    name: __("Schwacher Astralkörper")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Sprachfehler")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Spruchhemmung")
    costs: -60

  skills.add _.extend {}, S,
    name: __("Stigma")
    costs: -30
    max: 3

  skills.add _.extend {}, S,
    name: __("Stubenhocker")
    costs: -25

  skills.add _.extend {}, S,
    name: __("Stumm")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Theoretiker")
    costs: -5
    multiple: "Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Thesisgebundenheit")
    costs: -20
    max: 3

  skills.add _.extend {}, S,
    name: __("Übler Geruch")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Unangenehme Stimme")
    costs: -15

  skills.add _.extend {}, S,
    name: __("Unfähig (A)")
    costs: -5
    multiple: "A-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Unfähig (B)")
    costs: -10
    multiple: "B-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Unfähig (C)")
    costs: -15
    multiple: "C-Fertigkeit"

  skills.add _.extend {}, S,
    name: __("Unfrei")
    costs: -50
    groups: ['Sozialstatus', 'Unfrei']

  skills.add _.extend {}, S,
    name: __("Unterschicht")
    costs: -20
    groups: ['Sozialstatus', 'Unfrei']

  skills.add _.extend {}, S,
    name: __("Verarmt")
    costs: -10
    max: 3

  skills.add _.extend {}, S,
    name: __("Verfeindet")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Vergesslichkeit")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Vergesslichkeit")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Verpflichtungen")
    costs: -20
    max: 18

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einäugig)")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einohrig)")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einhändig:)")
    costs: -40

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einarmig)")
    costs: -80

  skills.add _.extend {}, S,
    name: __("Verstümmelt (Einbeinig)")
    costs: -80

  skills.add _.extend {}, S,
    name: __("Wahrer Name")
    costs: -5

  skills.add _.extend {}, S,
    name: __("Wilde Magie")
    costs: -25

  skills.add _.extend {}, S,
    name: __("Zauberallergie")
    costs: -5

  skills.add _.extend {}, S,
    name: __("Zauberanfällig")
    costs: -20

  skills.add _.extend {}, S,
    name: __("Zauberbeschränkung")
    costs: -25

  skills.add _.extend {}, S,
    name: __("Zerbrechlich")
    costs: -30
