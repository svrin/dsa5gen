###
  Configures Backbone.Router
###

class Router extends Backbone.Router

  initialize: (options) ->
    @route /^\/?$/, 'index', @.welcome
    @route ':cid', 'character'

  welcome: () ->
    require ['views/welcome'], (WelcomeView) ->
      view = new WelcomeView()
      $('main').html view.$el

  character: (cid) ->
    require ['views/character'], (CharacterView) ->
      view = new CharacterView()
      $('main').html view.$el

$ () ->
  router = new Router
  window.navigate = (url) ->
    router.navigate url, {trigger: true}
  Backbone.history.start {pushState: true}