###
  Select Box View, base template
###

define ['text!templates/selectbox.hbs'], (hbs) ->
  class BaseView extends Backbone.View
    template: _.template (hbs)
    tagName: 'section'

    className: ->
      'box-tab box-select ' + @.name

    initialize: (options) ->
      for event in @event
        @listenTo @.model, event, @reset
      @listenTo @.collection, "reset", @reset

      @$el.on "change", "input", @.select

      options['container'].append @$el

      $(window).on 'hashchange', @consider
      @consider()

    consider: =>
      if location.hash == "#" + @.name
        if @.prev? and not @.model.get(@.prev)
          window.location.href = "#" + @.prev
          return

        @reset()

        if not @$el.is(":target")
          window.location.href = "#" + @.name

    reset: =>
      @$el.attr "id", @.name
      @$el.html @template({character: @model, collection: @collection, name: @.name})

      # Select the value if present
      val = @model.get("_" + @.name)
      if val
        @$el.find("[value='" + val + "']").prop("checked", true)

    select: (event) =>
      @.model.set @.name, $(event.target).val()

      if @.next?
        window.location.href = "#" + @.next






