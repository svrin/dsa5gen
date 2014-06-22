require ["data/lifegrade"], (L) ->
  lifegrades.add _.extend L,
    name: __("Erfahren")

    AP: 2500
    E: 100
    L: 3

    E_MAX: 14
    F_MAX: 10