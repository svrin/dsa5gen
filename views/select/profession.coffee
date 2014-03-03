###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/profession'], (BaseView, professions) ->
  class ProfessionView extends BaseView
    name: 'profession'
    event: 'change:profession'
    collection: professions

    # Previous tab
    prev: 'culture'






