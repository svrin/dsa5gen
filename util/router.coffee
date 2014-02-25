###
  Configures Backbone.Router
###

class Router extends Backbone.Router

  initialize: (options) ->
    @route /^\/?$/, 'index', @.welcome
    @route 'c:cid', 'character', @.character
    @route 'impressum', 'impressum', @.impressum

    $(document).on 'click', "a[href='/impressum']", (event) ->
      event.preventDefault()

      window.navigate('/impressum')

    return

  welcome: () ->
    require ['views/welcome'], (WelcomeView) ->
      view = new WelcomeView()
      $('main').html view.$el

  character: (cid) ->
    require ['views/character', 'data/character'], (CharacterView, characters) ->
      model = characters.get('c' + cid);
      view = new CharacterView({model: model})
      $('main').html view.$el

  impressum: () ->
    require ['text!templates/impressum.hbs'], (Template) ->
      $('main').html _.template(Template)({})

$ () ->
  router = new Router
  window.navigate = (url) ->
    router.navigate url, {trigger: true}
  Backbone.history.start {pushState: true}