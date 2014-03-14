###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/race'], (BaseView, races) ->
  class RaceView extends BaseView
    name: 'race'
    caption: __("Rasse")
    
    event: ['change:race', 'change:profile']
    collection: races

    # Following tab
    next: 'culture'






