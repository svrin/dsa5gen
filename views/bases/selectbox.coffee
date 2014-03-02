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
      @listenTo @.model, @.event, @change
      @listenTo @.collection, "reset", @reset

      @$el.on "change", "input", @.select

      options['container'].append @$el

      $(window).on 'hashchange', @consider
      @consider()

    consider: =>
      if location.hash == "#" + @.name
        @reset()

        if not @$el.is(":target")
          window.location.href = "#" + @.name

    reset: =>
      @$el.attr "id", @.name
      @$el.html @template({character: @model, collection: @collection, selected: @model.get(@.name), name: @.name})

    select: (event) =>
      @.model.set @.name, $(event.target).val()

    change: ->
      # @TODO Implement this






