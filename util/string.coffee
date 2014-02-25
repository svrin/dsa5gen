###
    Little helper for strings
###

String.prototype.startsWith = (starts) ->
  this.slice(0, starts.length) == starts

String.prototype.endsWith = (ends) ->
  this.slice(this.length - ends.length) == ends