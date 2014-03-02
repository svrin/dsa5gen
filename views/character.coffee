###
  View for showing a character
###

define ['views/profile', 'views/attributes', 'views/basevalues'], (ProfileView, AttributesView, BasevaluesView) ->
  class CharacterView extends Backbone.View
    el: 'main'
    className: 'C'

    initialize: ->
      @.$el.html('')

      @._profileView = new ProfileView({model: @model, container: @$el})
      @._attributesView = new AttributesView({model: @model, container: @$el})
      @._basevaluesView = new BasevaluesView({model: @model, container: @$el})


