###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/profession'], (BaseView, professions) ->
  class ProfessionView extends BaseView
    name: 'profession'
    caption: __("Profession")
    
    event: ['change:profession', 'change:culture', 'change:race', 'change:profile']
    collection: professions

    # Previous tab
    prev: 'culture'






