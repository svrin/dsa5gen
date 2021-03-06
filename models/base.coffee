###
  Base model for all other models

  Contains functionality that is required by all other
###

define [], () ->
  class Model extends Backbone.Model
    idAttribute: 'name'

    initialize: () ->
      super

    is: (other) ->
      ###
        Check on equality that considers name, name_w, name_m and aliases
      ###
      return switch other
        when @.get(@.idAttribute) then true
        when @.get('name') then true
        when @.get('name_m') then true
        when @.get('name_w') then true
        else
          other in (@.get('aliases') || [])

    in: (other) ->
      ###
        Check elementof that considers name, name_w, name_m and aliases/groups
      ###
      groups = @.get('groups') || []
      if _.isString(other)
        other = [other]
      for item in other
        if @.is(item)
          return true
        if groups.indexOf(item) >= 0
          return true
      return false

    get: (attr, context) ->
      ###
        Overwritten for allowing @pget and @cget calls
        and evaluating functions on the fly
      ###

      # .get(_) calls bypass property functions
      if attr and attr.startsWith("_")
        return @.attributes[attr.substr(1)]

      value = @.attributes[attr]

      if _.isFunction(value) and _.isArray(context)
        value = value.call(context...)
      else if _.isFunction(value)
        value = value.apply(context or @)

      return value