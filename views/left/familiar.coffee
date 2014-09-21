###
  View for showing the calulcated attributes of the character
###

define ['views/bases/leftbox', 'text!templates/familiar.hbs'], (BaseView, hbs) ->
  class FamiliarView extends BaseView
    template: _.template (hbs)
    name: 'familiar'
    event: ['change:profession', 'change:familiar', 'change:attributes', 'change:skills']




