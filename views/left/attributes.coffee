###
  View for showing the attributes of a character
###

define ['views/bases/leftbox', 'text!templates/attributes.hbs'], (BaseView, hbs) ->
  class AttributesView extends BaseView
    template: _.template (hbs)
    name: 'attributes'
    event: 'change:attributes'




