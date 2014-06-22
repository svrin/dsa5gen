require ["data/lifegrade"], (L) ->
  lifegrades.add _.extend L,
    name: __("Unerfahren")

    AP: 1500
    E: 95
    L: 0

    E_MAX: 12
    F_MAX: 4