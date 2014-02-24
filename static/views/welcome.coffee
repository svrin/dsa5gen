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
      'click [cid]': "load"

    initialize: ->
      @listenTo @collection, "add", @add
      @listenTo @collection, "remove", @remove
      @listenTo @collection, "change", @change
      @listenTo @collection, "reset", @render

      if window.localStorage
        @reset window.localStorage.getItem('characters')
      else
        @reset []

    add: (character) ->
      @$el.append $(@template(character.attributes)).attr("cid", character.cid)

    remove: (character) ->
      @$el.find(["cid='" + character.cid + "'"]).remove()

    change: (character) ->
      @$el.find(["cid='" + character.cid + "'"]).replaceWith $(@template(character.attributes)).attr("cid",
        character.cid)

    reset: (characters) ->
      @$el.append $(@template({name: characterModel.prototype.defaults.name})).addClass('new')

      _.each characters, (character) =>
        @add character

    new: () ->
      character = @collection.push {}
      window.navigate character.cid

    load: (event) ->
      cid = $(event.target).attr("cid")
      window.navigate cid

  return WelcomeView


