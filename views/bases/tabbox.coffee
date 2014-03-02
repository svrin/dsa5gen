###
  Tab Box View, base template
###

define [], () ->
  class BaseView extends Backbone.View
    tagName: 'section'

    className: ->
      'box-tab ' + @.name

    initialize: (options) ->
      @listenTo @.model, @.event, @reset

      @reset()

      options['container'].append @$el

    reset: ->
      @$el.html @template({character: @model})




