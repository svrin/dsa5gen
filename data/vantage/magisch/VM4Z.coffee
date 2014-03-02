###
  Viertelzauberer
###

vantages.add [
  name: __("Viertelzauberer")
  category: [__("Magischer Vorteil")]

  costs: 5

  requirements: [
    ->
      not this.get('profession').is("Krieger", "Ritter", "Söldner")
  ]

  attributes:
    AsP: -6
]





