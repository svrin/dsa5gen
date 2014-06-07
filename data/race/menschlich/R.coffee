###
  Die Menschen
###

define "data/race/menschlich", [], () ->
    name: __("Mensch")
    name_w: __("Menschin")
    name_m: __("Mensch")

    costs: 0

    weight: ->
      this.get('profile')?['height']? - 100

    attributes:
      LE: 25
      MR: 0
      IN: 10
      GE: 8

    uncommon: [
      __("Wahrer Name")
    ]




