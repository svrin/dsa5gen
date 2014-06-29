###
  Configures Backbone.Router
###

$ () ->
  class Router extends Backbone.Router

    initialize: (options) ->
      @route /^\/?$/, 'index', @.welcome
      @route /^\/?character\/([\w\d\-]+)$/, 'character', @.character
      @route /^\/?character\/([\w\d\-]+)\/(\w+)$/, 'print', @.print
      @route 'impressum', 'impressum', @.impressum

      require ['data/character'], (characters) ->
        characters.fetch()

      $(document).on 'click', "a[href='/impressum']", (event) ->
        event.preventDefault()
        window.navigate('/impressum')

      return

    welcome: () ->
      require ['views/welcome', 'data/character'], (WelcomeView, characters) ->
        view = new WelcomeView({collection: characters})
        $('main').attr "role", "navigation"
        $('main').html view.$el

    print: (cid, mode) ->
      require ['views/print', 'views/error', 'data/character'], (PrintView, ErrorView, characters) ->
        model = characters.get(cid);
        if model
          $('main').attr "role", "main"
          return new PrintView({model: model, collection: characters, mode: mode})
        else
          new ErrorView({msg: "Der Character existiert nicht"})

    character: (cid) ->
      require ['views/character', 'views/error', 'data/character'], (CharacterView, ErrorView, characters) ->
        model = characters.get(cid);
        if model
          $('main').attr "role", "main"
          return new CharacterView({model: model, collection: characters})
        else
          new ErrorView({msg: "Der Character existiert nicht"})

    impressum: () ->
      require ['text!templates/impressum.hbs'], (Template) ->
        main = $('main')
        main.attr "role", "document"
        main.html _.template(Template)({})

  router = new Router
  window.navigate = (url) ->
    router.navigate url, {trigger: true}
  Backbone.history.start {pushState: true}