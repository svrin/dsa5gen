###
  View for printing a character
###

define [], () ->
  class PrintView extends Backbone.View
    el: 'main'
    className: 'c'

    initialize: (options) ->
      super

      mode = options['mode'] or 'print'
      require ["text!templates/sheets/#{mode}.hbs"], (hbs) =>
        @.template = _.template (hbs)
        @.$el.html @.template(character: @.model)

