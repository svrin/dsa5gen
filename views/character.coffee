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
      for view in ['profile', 'attributes', 'basevalues', 'options']
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

      # Tab Boxes
      for view in ['skills', 'battle', 'magic', 'liturgy']
        require ['views/tab/' + view], (View) =>
          @.views['tab'][view] = new View({model: @model, container: @$el})

      # Special treatment of :* calls
      for cmd in ["incr", "decr", "save", "export", "import"]
        @.$el.off "click.dsa5gen.#{cmd}"
        @.$el.on "click.dsa5gen.#{cmd}", "a[href*=':#{cmd}']", @[cmd]

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

    save: (event) =>
      ###
        Save call
      ###
      event.preventDefault()

      @.model.save()

      # Change image to saved
      image = $(event.target)
      if !image.tagName == "img"
        image = image.find("img")
      image.attr("src", "/images/glyphicons_disk_saved.png")

      # And bind to any change event
      @.model.once "all", =>
        image.attr("src", "/images/glyphicons_disk_save.png")

    export: (event) =>
      ###
        Export call
      ###
      event.preventDefault()

      # Build Data Blob
      blob = new Blob([JSON.stringify(@.model.toJSON())], {type: "text/plain"})

      # Get name
      name = @.model.get("name").replace(/[^A-Za-z0-9]/g, "_")

      # Create link
      a = document.createElement('a')
      a.download = "#{name}.dsa5gen.json"
      a.href = (window.URL || window.webkitURL).createObjectURL(blob)
      a.textContent = 'Download'

      # attach download content
      a.dataset.downloadurl = ["application/json", a.download, a.href].join(':')
      a.draggable = true

      # Dispatch click event
      event = document.createEvent('Event')
      event.initEvent('click', true, true)
      a.dispatchEvent(event)
      (window.URL || window.webkitURL).revokeObjectURL(a.href)
      return event

    import: (event) =>
      ###
        Import call
      ###
      event.preventDefault()

      # Build an input file chooser
      input = document.createElement('input')
      input.type = "file"
      input.accept = ".dsa5gen.json"
      input.multiple = false

      character = @.model

      # Bind event
      input.addEventListener 'change', (event) ->
        reader = new FileReader()
        reader.onload = (event) ->
          character.fetch({load: JSON.parse(event.target.result)})
        reader.readAsText(event.target.files[0], 'UTF-8')

      # Dispatch click event
      event = document.createEvent('Event')
      event.initEvent('click', true, true)
      input.dispatchEvent(event)

      return event










