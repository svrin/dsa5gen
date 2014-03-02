###
  View for showing a character
###

define ['text!templates/basevalues.hbs'], (hbs) ->
  class BasevaluesView extends Backbone.View
    template: _.template (hbs)

    tagName: 'section'
    className: 'basevalues box-left'

    initialize: (options) ->
      @listenTo @model, "change:attributes", @reset

      @reset()

      options['container'].append @$el

    reset: ->
      @$el.html @template({character: @model})




