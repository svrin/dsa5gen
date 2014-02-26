###
  Modal error
###

define ['text!templates/error.hbs'], (hbs) ->
  class ErrorView extends Backbone.View
    template: _.template (hbs)

    el: 'main'
    className: 'error'

    initialize: (options) ->
      @reset options['msg']

    reset: (msg) ->
      @$el.prepend @template({msg: msg})

  return ErrorView