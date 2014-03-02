###
  View for showing the calulcated attributes of the character
###

define ['views/bases/leftbox', 'text!templates/basevalues.hbs'], (BaseView, hbs) ->
  class BasevaluesView extends BaseView
    template: _.template (hbs)
    name: 'basevalues'
    event: 'change:attributes'




