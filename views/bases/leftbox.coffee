###
  Left Box View, base template
###

define [], () ->
  class BaseView extends Backbone.View
    tagName: 'section'

    className: ->
      'box-left ' + @.name

    initialize: (options) ->
      for event in @.event
        @listenTo @.model, event, @reset

      @reset()

      options['container'].append @$el

    reset: ->
      @$el.html @template({character: @model})




