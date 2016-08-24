###
  Seefahrer / Fischer

  @version: US25001
  @page: 140
###

professions.add new (
  class P extends PSEF
    name: __("Seefahrer/Fischer")

    name_m: __("Fischer")
    name_w: __("Fischerin")

    costs: 185

    auto: [
      add_pool(10, __("Sprache"), __("Schrift"))

      [__("Fertigkeitsspezalisierung (Boote & Schiffe)"), 1]
      [__("Sonderfertigkeit (Fischer)"), 1]

      [__("Dolche"), 8]
      [__("Raufen"), 8]
      [__("Schwerter"), 8]

      [__("Körperbeherschung"), 5]
      [__("Klettern"), 5]
      [__("Schwimmen"), 7]
      [__("Zechen"), 4]

      [__("Menschenkenntnis"), 2]
      [__("Überreden"), 2]

      [__("Fesseln"), 7]
      [__("Fischen & Angeln"), 7]
      [__("Orientierung"), 5]
      [__("Tierkunde"), 4]
      [__("Wildnisleben"), 3]

      [__("Geographie"), 4]
      [__("Götter & Kulte"), 4]
      [__("Sagen & Legenden"), 5]

      [__("Boote & Schiffe"), 7]
      [__("Holzbearbeitung"), 4]
      [__("Stoffbearbeitung"), 3]
    ]
)




