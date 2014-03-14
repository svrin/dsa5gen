###
  Configures Backbone.Router
###

$ () ->
  class Router extends Backbone.Router

    initialize: (options) ->
      @route /^\/?$/, 'index', @.welcome
      @route 'c:id', 'character', @.character
      @route 'impressum', 'impressum', @.impressum

      require ['data/character'], (characters) ->
        characters.fetch()

      $(document).on 'click', "a[href='/impressum']", (event) ->
        event.preventDefault()

        window.navigate('/impressum')

      return

    welcome: () ->
      require ['views/welcome'], (WelcomeView) ->
        view = new WelcomeView()
        $('main').attr "role", "navigation"
        $('main').html view.$el

    character: (cid) ->
      require ['views/character', 'views/error', 'data/character'], (CharacterView, ErrorView, characters) ->
        model = characters.get('c' + cid);
        if model
          $('main').attr "role", "main"
          return new CharacterView({model: model})
        else
          new ErrorView({msg: "Der Character existiert nicht"})

    impressum: () ->
      require ['text!templates/impressum.hbs'], (Template) ->
      	$('main').attr "role", "document"
      	$('main').html _.template(Template)({})

  router = new Router
  window.navigate = (url) ->
    router.navigate url, {trigger: true}
  Backbone.history.start {pushState: true}