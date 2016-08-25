###
  View for showing the profile information for a character
###

define ['views/bases/leftbox', 'text!templates/options.hbs'], (BaseView, hbs) ->
  class OptionView extends BaseView
    template: _.template (hbs)
    name: 'options'
    event: []

    initialize: ->
      super

      # Special treatment of :* calls
      for cmd in ["create", "save", "export", "import", "destroy", "print"]
        @.$el.off "click.dsa5gen.#{cmd}"
        @.$el.on "click.dsa5gen.#{cmd}", "a[href*=':#{cmd}']", @[cmd]

    create: (event) =>
      ###
        Create character call
      ###
      event.preventDefault()

      character = @collection.push {}
      character.save()
      window.navigate character.url()

    destroy: (event) =>
      ###
        Destroy character call
      ###
      event.preventDefault()

      @.model.destroy()
      window.navigate "/"

    print: (event) =>
      ###
        Print view
      ###
      event.preventDefault()

      window.navigate @.model.url() + "/print"

    json: (event) =>
      ###
        Json view
      ###
      event.preventDefault()

      window.navigate @.model.url() + "/json"

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

      collection = @collection

      # Bind event
      input.addEventListener 'change', (event) ->
        reader = new FileReader()
        reader.onload = (event) ->
          character = collection.push {}
          data = JSON.parse(event.target.result)
          character.set(data)
          character.save()
          window.navigate character.url()
        reader.readAsText(event.target.files[0], 'UTF-8')

      # Dispatch click event
      event = document.createEvent('Event')
      event.initEvent('click', true, true)
      input.dispatchEvent(event)

      return event

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






