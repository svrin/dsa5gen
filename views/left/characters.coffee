###
  View for showing the characters that are available
###

define ['views/bases/leftbox', 'text!templates/characters.hbs', 'data/character'], (BaseView, hbs, characters) ->
  class CharacterView extends BaseView
    template: _.template (hbs)
    name: 'characters'
    event: []

    initialize: ->
      super

      @listenTo @collection, "add", @render
      @listenTo @collection, "remove", @render
      @listenTo @collection, "change", @render
      @listenTo @collection, "reset", @render