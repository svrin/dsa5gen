###
    Little helper for strings
###

# startswith
String.prototype.startsWith = (starts) ->
  this.slice(0, starts.length) == starts

# endswith
String.prototype.endsWith = (ends) ->
  this.slice(this.length - ends.length) == ends

# joiner
_.mixin {
  join: (list, context...) ->
    data = _.map list, (value, key) =>

      # List -> Array
      if _.isArray value
        key = value[0]
        value = value[1]

      # Function
      if _.isFunction value
        value = value(context...)

      return "#{key}: #{value}"
    data.join(", ")


}