###
  View for showing a character
###

define ['text!templates/profile.hbs'], (hbs) ->
  class ProfileView extends Backbone.View
    template: _.template (hbs)

    tagName: 'section'
    className: 'profile box-left'

    initialize: (options) ->
      @listenTo @model, "change", @reset

      @reset()

      options['container'].append @$el

    reset: ->
      @$el.html @template({character: @model})




