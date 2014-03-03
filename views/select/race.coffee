###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/race'], (BaseView, races) ->
  class RaceView extends BaseView
    name: 'race'
    event: ['change:race', 'change:profile']
    collection: races

    # Following tab
    next: 'culture'






