###
  Tab Box View, base template
###

define [], () ->
  class BaseView extends Backbone.View
    tagName: 'section'
    
    events:
      'change input': 'change'
      'change select': 'change'

    className: ->
      'box-tab ' + @.name

    initialize: (options) ->
      for event in @.event
        @listenTo @.model, event, @render
      
      $('<a>').attr('href', "##{@.name}").text(@.caption or __(@.name)).addClass('link-tab').appendTo $('nav')

      options['container'].append @$el

      $(window).on 'hashchange', @consider
      @consider()

    consider: =>
      if location.hash == "#" + @.name
        if @.prev? and not @.model.get(@.prev)
          window.location.href = "#" + @.prev
          return

        @render()

        if not @$el.is(":target")
          window.location.href = "#" + @.name
          return
          
        $('a').removeClass('active').filter((index, el) -> $(el).attr('href') == window.location.hash).addClass('active')

    render: ->
      @$el.attr "id", @.name
      @$el.html @template({character: @model, self: @})
      @delegateEvents()
      return @
      
    change: (event) =>
      node = $(event.target)
      
      name = node.attr('name')
      if name.startsWith('character')
        args = name.split('.').slice(1)
        @model.set args..., node.val()
        
      $("[data-for='#{name}']").text node.val()
        




