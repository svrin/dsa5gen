###
  Base model for all other models

  Contains functionality that is required by all other
###

define [], () ->
  class Model extends Backbone.Model
    idAttribute: 'name'

    properties: {}

    is: (other) =>
      ###
        Check on euqality that considers name, name_w, name_m and aliases
      ###
      return switch other
        when @.get(@.idAttribute) then true
        when @.get('name') then true
        when @.get('name_m') then true
        when @.get('name_w') then true
        else other in (@.get('aliases') || [])

    get: (attr, context) ->
      ###
        Overwritten for allowing @pget and @cget calls
        and evaluating functions on the fly
      ###

      # .get(_) calls bypass property functions
      if attr.startsWith("_")
        return @.attributes[attr.substr(1)]

      value = @.attributes[attr]

      if _.isFunction(value)
        value = value.call(context or this)

      func = @['properties'][attr]
      if func?
        value = func(value)

      return value