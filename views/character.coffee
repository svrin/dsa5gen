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

      # Special treatment of :incr / :decr calls
      @.$el.on 'click', "a[href*=':incr']", @.incr
      @.$el.on 'click', "a[href*=':decr']", @.decr

    incr: (event) =>
      ###
        Increase calls
      ###
      event.preventDefault()

      href = $(event.target).attr('href').substr(6)
      href = href.substr(0, href.length - 1)

      args = href.split('.')
      @.model.incr(args...)

    decr: (event) =>
      ###
        Decrease calls
      ###
      event.preventDefault()

      href = $(event.target).attr('href').substr(6)
      href = href.substr(0, href.length - 1)

      args = href.split('.')
      @.model.decr(args...)






