###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/culture'], (BaseView, cultures) ->
  class CultureView extends BaseView
    name: 'culture'
    event: 'change:culture'
    collection: cultures

    # Previous & Following tab
    prev: 'race'
    next: 'profession'






