###
  Modal greeting
###

define ['text!templates/welcome.hbs', 'data/character', 'models/character'], (hbs, characters, characterModel) ->
  class WelcomeView extends Backbone.View
    template: _.template (hbs)

    tagName: 'section'
    className: 'welcome'

    collection: characters

    events:
      'click .new': "new"
      'click [id]': "load"

    initialize: ->
      @listenTo @collection, "add", @add
      @listenTo @collection, "remove", @remove
      @listenTo @collection, "change", @change
      @listenTo @collection, "reset", @reset

      @collection.fetch()

    add: (character) ->
      @$el.append $(@template(character.attributes)).attr("id", character.id)

    remove: (character) ->
      @$el.find("#" + character.id).remove()

    change: (character) ->
      @$el.find("#" + character.id).replaceWith $(@template(character.attributes)).attr("id", character.id)

    reset: () ->
      @$el.html ""

      @$el.append $(@template({name: characterModel.prototype.defaults.name})).addClass('new')

      @collection.each (character) =>
        @add character

    new: () ->
      character = @collection.push {}
      window.navigate character.id

    load: (event) ->
      cid = $(event.target).attr("id")
      window.navigate cid

  return WelcomeView