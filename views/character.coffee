###
  View for showing a character
###

define [], () ->
  class CharacterView extends Backbone.View
    el: 'main'
    className: 'c'

    initialize: ->
      super
      @.$el.html('')

      # Storage of all views, so they are "runtime-bound" to the character instance view
      @.views = {'left': {}, 'tab': {}}

      # Left Boxes
      for view in ['profile', 'attributes', 'basevalues', 'options']
        require ['views/left/' + view], (View) =>
          @.views['left'][view] = new View({collection: @collection, model: @model, container: @$el})

      # Bind or Create the nav
      @.$nav = @.$el.find 'nav'
      if not @.$nav.length
        @.$nav = $('<nav>').appendTo(@.$el)
        @.$nav.prepend ($('<a>')
        .append($('<img>').attr("src", "/images/arrow_up.gif"))
        .append($('<img>').attr("src", "/images/arrow_down.gif"))
        .attr("id", "nav")
        .attr("href", ":nav"));

      # Content Boxes for Collection Selection
      for view in ['race', 'culture', 'profession']
        require ['views/select/' + view], (View) =>
          @.views['tab'][view] = new View({model: @model, container: @$el})

      # Tab Boxes
      for view in ['profile']
        require ['views/tab/' + view], (View) =>
          @.views['tab'][view] = new View({model: @model, container: @$el})

      # Tab Boxes
      for view in ['language', 'skills', 'battle', 'magic', 'liturgy', 'vantage']
        require ['views/tab/' + view], (View) =>
          @.views['tab'][view] = new View({model: @model, container: @$el})

      # Special treatment of :* calls
      for cmd in ["incr", "decr", "nav"]
        @.$el.off "click.dsa5gen.#{cmd}"
        @.$el.on "click.dsa5gen.#{cmd}", "a[href*=':#{cmd}']", @[cmd]

      return

    nav: (event) =>
      ###
        Nav scroll button
      ###
      event.preventDefault()

      up = $(event.target).attr("src") && $(event.target).attr("src").indexOf("up") >= 0;
      down = $(event.target).attr("src") && $(event.target).attr("src").indexOf("down") >= 0;
      current = $("nav").scrollTop()

      if up
        current -= 40

      if down
        current += 40

      $("nav").scrollTop(current)

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










