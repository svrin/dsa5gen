###
  View for showing a character
###

define [], () ->
  class CharacterView extends Backbone.View
    el: 'main'
    className: 'c'

    initialize: ->
      @.$el.html('')

      # Storage of all views, so they are "runtime-bound" to the character instance view
      @.views = {}

      # Left Boxes
      for view in ['profile', 'attributes', 'basevalues']
        require ['views/left/' + view], (View) =>
          @.views[view] = new View({model: @model, container: @$el})

      # Content Boxes for Collection Selection
      for view in ['race', 'culture', 'profession']
        require ['views/select/' + view], (View) =>
          @.views[view] = new View({model: @model, container: @$el})






