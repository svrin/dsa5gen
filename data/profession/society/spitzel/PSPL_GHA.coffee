###
  Spitzel
###

professions.add new (
  class P extends PSPL
    name: __("Spitzel/Geheimagent")

    name_m: __("Geheimagent")
    name_w: __("Geheimagentin")

    costs: 266

    auto: [
      add_pool(16, __("Sprache"), __("Schrift"))

      [__("Fertigkeitsspezalisierung (Verbergen)"), 1]

      [__("Raufen"), 10]
      [__("Dolche"), 12]
      [__("Armbrüste"), 10]
      choice("PGSL_GHA_K", 12, __("Fetchtwaffen"), __("Hiebwaffen"), __("Schwerter"))

      [__("Sinnesschärfe"), 7]
      [__("Taschendiebstahl"), 2]
      [__("Verbergen"), 8]

      [__("Etikette"), 4]
      [__("Gassenwissen"), 6]
      [__("Menschenkenntnis"), 6]
      [__("Überreden"), 6]
      [__("Verkleiden"), 8]
      [__("Willenskraft"), 5]

      [__("Geographie"), 4]
      [__("Orientierung"), 3]

      [__("Götter & Kulte"), 3]
      [__("Rechnen"), 4]
      [__("Rechtskunde"), 4]
      [__("Sagen & Legenden"), 2]

      [__("Handel"), 3]
      [__("Schlösserknacken"), 3]
    ]
)




