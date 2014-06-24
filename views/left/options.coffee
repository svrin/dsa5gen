###
  View for showing the profile information for a character
###

define ['views/bases/leftbox', 'text!templates/options.hbs'], (BaseView, hbs) ->
  class OptionView extends BaseView
    template: _.template (hbs)
    name: 'options'
    event: []






