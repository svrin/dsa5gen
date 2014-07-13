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

    build_select: (race, profile, attr) =>
      node = @.$el.find("[name='character.profile.#{attr}']")
      _.each race.get(attr), (item) ->
        item_node = $("<option>").text(item[0]).attr("value", item[0])
        node.find('optgroup').append(item_node)
      if profile[attr]
        node.find('option:first').text(profile[attr]).val(profile[attr]).prop('selected', 'selected')

    consider: =>
      if location.hash == "#" + @.name
        if @.prev? and not @.model.get(@.prev)
          window.location.href = "#" + @.prev
          return

        @render()

        if not @$el.is(":target")
          window.location.href = "#" + @.name
          return

        $('a').removeClass('active').filter((index, el) ->
          $(el).attr('href') == window.location.hash).addClass('active')

    render: ->
      @$el.attr "id", @.name
      @$el.html @template({character: @model, self: @})
      @delegateEvents()
      return @

    change: (event) =>
      node = $(event.target)
      name = node.attr('name')

      # Changling %! and %?
      if node.is "select"
        value = node.val()
        if value == "%!"
          options = $('optgroup option', node)
          option = $(_.sample options)
          option.prop "selected", "selected"
        else if value == "%?"
          option = node.children("option:first")
          value = prompt "", ""
          option.val value
          option.text value
          option.prop "selected", "selected"

      # Updating any depending elements
      $("[data-for='#{name}']").text node.val()
      $("[data-key='#{name}']").attr "data-value", node.val()

      # Set it when in character namespace
      if name && name.startsWith('character')
        args = name.split('.').slice(1)
        @model.set args..., node.val()

      # Sometimes we want to rerender on certain events, provide data-action attribute for this
      action = node.data("action")
      if action && action == 'render'
        @render()
        




