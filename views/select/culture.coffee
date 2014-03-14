###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/culture'], (BaseView, cultures) ->
  class CultureView extends BaseView
    name: 'culture'
    caption: __("Kultur")
    
    event: ['change:culture', 'change:race', 'change:profile']
    collection: cultures

    # Previous & Following tab
    prev: 'race'
    next: 'profession'






