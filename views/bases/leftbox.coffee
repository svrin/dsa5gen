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
        @listenTo @.model, event, @render

      @render()

      options['container'].append @$el

    render: ->
      @$el.html @template({character: @model, self: @})




