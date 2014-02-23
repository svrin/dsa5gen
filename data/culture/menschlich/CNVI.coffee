###
  Novadis
###

isM = ->
  char.gender["m"] || char.has("Achmad’Sunni")
isW = ->
  not isM()

cultures.add [
  name: __("Novadis")

  costs: -> if isM() then 3 else 1

  mods:
    MU: -> if isM() then 1 else 0
    AuP: -> if isM() then 2 else 1


  vantages:
    auto: [
      __("Hitzeresistenz"),
      __("Richtungssinn"),
      [__("Raumangst"), 5]
      [__("Jähzorn"), 5]
      choice(5, __("Arroganz"), __("Rachsucht"))
      __("Speisegebote")
    ]
    recommended: [
      __("Ausdauernd"),
      __("Eisern"),
      ->
        __("Hohe Lebenskraft") if isM()
      __("Innerer Kompass"),
      ->
        __("Schnelle Heilung") if isM()
      ->
        __("Schwer zu verzaubern") if isW()
      __("Zäher Hund"),
      __("Arroganz"),
      __("Jähzorn"),
      __("Meeresangst"),
      __("Prinzipientreue (99 Gesetze)")
      __("Rachsucht"),
      __("Vorurteile")
    ]
    uncommon: [
      __("Adlige Abstammung"),
      __("Feenfreund"),
      __("Koboldfreund"),
      __("Soziale Anpassungsfähigkeit")
      __("Krankheitsanfällig")
      __("Lichtempfindlich"),
      __("Lichtscheu"),
      __("Platzangst")
    ]
    reduced: [
      __("Waffenloser Kampfstil (Unauer Schule)")
    ]

  skills: [
    ->
      [__("Bogen"), 1] if isM()
    [__("Dolche"), 1]
    ->
      [__("Lanzenreiten"), 1] if isM()
    ->
      [__("Raufen"), if isM() then 1 else 2]
    ->
      [__("Ringen"), 1] if isM()
    ->
      [__("Säbel"), 1] if isM()
    ->
      [__("Speere"), 1] if isM()
    ->
      [__("Wurfspeere"), 1] if isM()

    [__("Athletik"), 1]
    [__("Körperbeherschung"), 1]
    ->
      [__("Reiten"), if isM() then 3 else 2]
    [__("Schwimmen"), -1]
    ->
      [__("Selbstbeherschung"), 1] if isW()
    ->
      [__("Sich Verstecken")] if isW()
    [__("Sinnesschärfe"), 1]
    ->
      [__("Tanzen"), if isM() then 1 else 3]

    [__("Orientierung"), 3]
    [__("Wildnisleben"), 1]

    ->
      [__("Brett-/Kartenspiel"), if isM() then 2 else 3]
    [__("Götter/Kulte"), 1]
    [__("Rechnen"), 1]
    [__("Rechtskunde"), 1]
    ->
      [__("Sagen/Legenden"), if isM() then 1 else 3]
    [__("Schätzen"), 1]
    [__("Sternkunde"), 1]

    [__("Tulamidya"), ->
      char.attributes["KL"] - 2]

    [__("Boote Fahren"), -1]
    ->
      [__("Heilkunde Gift"), 1] if isW()
    ->
      [__("Heilkunde Krankheit"), 1] if isW()
    ->
      [__("Heilkunde Wunden"), 2] if isW()
    ->
      [__("Holzbearbeitung"), 1] if isW()
    ->
      [__("Kochen"), 1] if isW()
    ->
      [__("Lederarbeiten"), 2] if isW()
    ->
      [__("Schneidern"), 1] if isW()

    __("Wüstenkundig")
    __("Kulturkunde (Novadis)")
  ]


  professions: [
    ->
      __("Bote") if isM()
    ->
      __("Entdecker") if isW()
    __("Gaukler")
    ->
      __("Krieger") if isM()
    __("Kundschafter")
    ->
      __("Magier") if isM()
    ->
      __("Söldner") if isM()
    __("Streuner")
    __("Wundarzt")
  ]
]




