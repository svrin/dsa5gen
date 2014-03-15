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
      @.views = {'left': {}, 'tab': {}}

      # Left Boxes
      for view in ['profile', 'attributes', 'basevalues']
        require ['views/left/' + view], (View) =>
          @.views['left'][view] = new View({model: @model, container: @$el})
      
      # Bind or Create the nav
      @.$nav = @.$el.find 'nav'
      if not @.$nav.length
        @.$nav = $('<nav>').appendTo(@.$el)

      # Content Boxes for Collection Selection
      for view in ['race', 'culture', 'profession']
        require ['views/select/' + view], (View) =>
          @.views['tab'][view] = new View({model: @model, container: @$el})
          
      # Tab Boxes
      for view in ['profile']
        require ['views/tab/' + view], (View) =>
          @.views['tab'][view] = new View({model: @model, container: @$el})        

      # Special treatment of :incr / :decr calls
      @.$el.off 'click.dsa5gen.incr'
      @.$el.on 'click.dsa5gen.incr', "a[href*=':incr']", @.incr
      @.$el.off 'click.dsa5gen.decr'
      @.$el.on 'click.dsa5gen.decr', "a[href*=':decr']", @.decr
        
      return

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






