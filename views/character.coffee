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
      for view in ['profile', 'attributes', 'basevalues', 'familiar', 'options']
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
      for view in ['language', 'skills', 'battle', 'magic', 'liturgy', 'vantage', 'capability', 'equipment']
        require ['views/tab/' + view], (View) =>
          @.views['tab'][view] = new View({model: @model, container: @$el})

      # Special treatment of :* calls
      for cmd in ["incr", "decr", "nav", "dialect"]
        @.$el.off "click.dsa5gen.a-#{cmd}"
        @.$el.on "click.dsa5gen.a-#{cmd}", "a[href*=':#{cmd}']", @[cmd]
        @.$el.off "click.dsa5gen.select-#{cmd}"
        @.$el.on "change.dsa5gen.select-#{cmd}", "select[data-href*=':#{cmd}']", @[cmd]

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

    dialect: (event) =>
      ###
        Choose dialect calls
      ###
      $target = $(event.target)
      href = $target.data('href').substr(9)
      href = href.substr(0, href.length - 1)
      args = href.split('.')

      @.model.dialect(args..., $target.val())

    incr: (event) =>
      ###
        Increase calls
      ###
      event.preventDefault()

      $target = $(event.target)
      href = $target.attr('href').substr(6)
      href = href.substr(0, href.length - 1)
      args = href.split('.')

      v_max = $target.data("max") || $target.parent().data("max")
      if v_max
        args.push({max: v_max})

      @.model.incr(args...)

    decr: (event) =>
      ###
        Decrease calls
      ###
      event.preventDefault()

      $target = $(event.target)
      href = $target.attr('href').substr(6)
      href = href.substr(0, href.length - 1)
      args = href.split('.')

      v_min = $target.data("min") || $target.parent().data("min")
      if v_min
        args.push({min: v_min})

      @.model.decr(args...)










