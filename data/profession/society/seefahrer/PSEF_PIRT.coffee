###
  Seefahrer / Pirat

  @version: US25001
  @page: 140
###

professions.add new (
  class P extends PSEF
    name: __("Seefahrer/Pirat")

    name_m: __("Pirat")
    name_w: __("Piratin")

    costs: 199

    auto: [
      add_pool(10, __("Sprache"), __("Schrift"))

      [__("Fertigkeitsspezalisierung (Boote & Schiffe)"), 1]

      [__("Dolche"), 8]
      [__("Raufen"), 8]
      [__("Schwerter"), 10]

      [__("Körperbeherschung"), 5]
      [__("Klettern"), 5]
      [__("Schwimmen"), 7]
      [__("Zechen"), 4]

      [__("Einschüchtern"), 4]
      [__("Menschenkenntnis"), 2]
      [__("Überreden"), 2]

      [__("Fesseln"), 7]
      [__("Fischen & Angeln"), 4]
      [__("Orientierung"), 5]
      [__("Tierkunde"), 2]
      [__("Wildnisleben"), 3]

      [__("Gassenwissen"), 4]
      [__("Geographie"), 4]
      [__("Götter & Kulte"), 4]
      [__("Sagen & Legenden"), 5]

      [__("Boote & Schiffe"), 7]
      [__("Holzbearbeitung"), 4]
      [__("Stoffbearbeitung"), 3]
    ]
)




