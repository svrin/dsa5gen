###
  Viertelzauberer
###

vantages.add [
  name: __("Viertelzauberer")
  category: [__("Magischer Vorteil")]

  costs: 5

  requirements: [
    ->
      not char.profession.is("Krieger", "Ritter", "Söldner")
  ]

  mods:
    AsP: -6
]




