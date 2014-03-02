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

    change: ->
      # @TODO Implement this






