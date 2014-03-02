###
  Base model for all other models

  Contains functionality that is required by all other
###

define [], () ->
  class Model extends Backbone.Model
    idAttribute: 'name'

    properties: {}

    get: (attr) ->
      ###
        Overwritten for allowing @pget and @cget calls
        and evaluating functions on the fly
      ###

      # .get(_) calls bypass property functions
      if attr.startsWith("_")
        return @.attributes[attr.substr(1)]

      value = @.attributes[attr]

      if _.isFunction(value)
        value = value.call(@)

      func = @['properties'][attr]
      if func?
        value = func(value)

      return value