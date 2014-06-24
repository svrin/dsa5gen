###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/culture'], (BaseView, cultures) ->
  class CultureView extends BaseView
    name: 'culture'
    caption: __("Kultur")
    
    event: ['change:culture', 'change:race', 'change:profile']
    collection: cultures

    # Filter
    options:
      common: [__('Geläufige Kulturen'), (culture) ->
        return race.get('cultures').indexOf(culture.get('name')) >= 0
      ]

      all: [__('Alle Kulturen'), () ->
        return true
      ]


    # Previous & Following tab
    prev: 'race'
    next: 'profession'






