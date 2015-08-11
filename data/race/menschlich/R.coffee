###
  Die Menschen

  @version: US25001
  @page: 89
###

define "data/race/menschlich", [], () ->
    name: __("Mensch")
    name_w: __("Menschin")
    name_m: __("Mensch")

    costs: 0

    weight: ->
      this.get('profile')?['height']? - 100

    attributes:
      LE: 5
      SK: -5
      ZK: -5
      GS: 8

    auto: [
      choice(1, "MU", "KL", "IN", "CH", "FF", "GE", "KO", "KK")
    ]




