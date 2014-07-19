###
  View for the welcome page
###

define [], () ->
  class WelcomeView extends Backbone.View
    el: 'main'
    className: 'c'

    initialize: ->
      @.$el.html('')

      # Storage of all views, so they are "runtime-bound" to the character instance view
      @.views = {'left': {}, 'tab': {}}

      # Left Boxes
      for view in ['characters', 'options']
        require ['views/left/' + view], (View) =>
          @.views['left'][view] = new View({collection: @collection, container: @$el})

      # Welcome box
      require ['text!templates/welcome.hbs'], (hbs) =>
        @.$el.append _.template(hbs)({self: @})
