###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/race'], (BaseView, races) ->
  class RaceView extends BaseView
    name: 'race'
    event: 'change:race'
    collection: races






