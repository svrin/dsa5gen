###
  Söldner & Soldat
###

professions.add new (
  class P extends PSOL
    name: __("Söldner & Soldat/Streitwagenlenker")

    name_m: __("Streitwagenlenker")
    name_w: __("Streitwagenlenkerin")

    costs: 980

    auto: [
      add_pool(20, __("Sprache"), __("Schrift"))

      [__("Behinderungsgewöhnung"), 1]
      __("Finte")
      __("Wuchtschlag")
      __("Reiterkampf")

      [__("Raufen"), 7]
      [__("Dolche"), 4]
      [__("Wurfwaffen"), 4]
      add_pool(120, __("Kampftechniken"))

      [__("Körperbeherrschung"), 4]
      [__("Reiten"), 10]
      [__("Selbstbeherrschung"), 4]
      [__("Zechen"), 7]

      [__("Menschenkenntnis"), 4]
      [__("Überreden"), 4]

      [__("Orientierung"), 4]
      [__("Wildnisleben"), 4]

      [__("Fahrzeuge"), 7]
      [__("Götter & Kulte"), 4]
      [__("Kriegskunst"), 7]
      [__("Sagen & Legenden"), 4]

      [__("Heilkunde Wunden"), 4]
    ]

    cultures:
      uncommon: [
        __("Elfen")
      ]
)



