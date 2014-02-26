###
  View for showing a character
###

define ['views/profile', 'views/attributes'], (ProfileView, AttributesView) ->
  class CharacterView extends Backbone.View
    el: 'main'
    className: 'C'

    initialize: ->
      @.$el.html('')

      @._profileView = new ProfileView({model: @model, container: @$el})
      @._attributesView = new AttributesView({model: @model, container: @$el})


