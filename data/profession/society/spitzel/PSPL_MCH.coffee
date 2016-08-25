###
  Spitzel
###

professions.add new (
  class P extends PSPL
    name: __("Spitzel/Meuchelmörder")

    name_m: __("Meuchelmörder")
    name_w: __("Meuchelmörderin")

    costs: 230

    auto: [
      add_pool(16, __("Sprache"), __("Schrift"))

      [__("Fertigkeitsspezalisierung (Verbergen)"), 1]

      [__("Raufen"), 10]
      [__("Dolche"), 12]
      [__("Armbrüste"), 10]
      choice("PGPL_MCH_K", 12, __("Fetchtwaffen"), __("Hiebwaffen"), __("Schwerter"))

      [__("Sinnesschärfe"), 7]
      [__("Taschendiebstahl"), 5]
      [__("Verbergen"), 8]

      [__("Klettern"), 5]
      [__("Gassenwissen"), 6]
      [__("Menschenkenntnis"), 6]
      [__("Überreden"), 6]
      [__("Verkleiden"), 8]
      [__("Willenskraft"), 5]

      [__("Körperbeherschung"), 6]
      [__("Orientierung"), 3]
      [__("Einschüchtern"), 4]

      [__("Götter & Kulte"), 3]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 2]

      [__("Handel"), 3]
      [__("Schlösserknacken"), 3]
    ]
)




