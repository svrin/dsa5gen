###
  View for showing a character
###

define ['text!templates/attributes.hbs'], (hbs) ->
  class AttributesView extends Backbone.View
    template: _.template (hbs)

    tagName: 'section'
    className: 'attributes box-left'

    initialize: (options) ->
      @listenTo @model, "change:attributes", @reset

      @reset()

      options['container'].append @$el

    reset: ->
      @$el.html @template({character: @model})




