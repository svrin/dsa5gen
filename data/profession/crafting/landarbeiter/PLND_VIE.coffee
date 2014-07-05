###
  Landarbeiter
###

professions.add new (
  class P extends PLND
    name: __("Landarbeiter/Viehzüchter")

    name_m: __("Viehzüchter")
    name_w: __("Viehzüchterin")

    costs: 905

    auto: [
      add_pool(5, __("Sprache"), __("Schrift"))

      [__("Raufen"), 4]
      [__("Dolche"), 4]
      [__("Hiebwaffen"), 4]
      [__("Stangenwaffen"), 4]

      [__("Körperbeherrschung"), 4]
      [__("Sinnesschärfe"), 4]
      [__("Tanzen"), 4]
      [__("Zechen"), 4]

      [__("Menschenkenntnis"), 4]

      [__("Fährtensuchen"), 4]
      [__("Fischen & Angeln"), 4]
      [__("Orientierung"), 4]
      [__("Pflanzenkunde"), 4]
      [__("Tierkunde"), 10]
      [__("Wildnisleben"), 4]

      [__("Götter & Kulte"), 4]
      [__("Rechen"), 4]
      [__("Sagen & Legenden"), 4]

      [__("Fahrzeuge"), 4]
      [__("Heilkunde Krankheiten"), 4]
      [__("Heilkunde Wunden"), 4]
      [__("Holzbearbeitung"), 4]
      [__("Kochen & Backen"), 1]
      [__("Lederbearbeitung"), 7]
      [__("Stoffbearbeitung"), 4]
    ]

    cultures:
      uncommon: [
        __("Elfen")
      ]
)
