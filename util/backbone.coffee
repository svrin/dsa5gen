###
  Configure backbone

  Overwrite Backbone functionality we want to behave other
###

# We never want to talk to a server
Backbone.sync = (method, model, success, error) ->
  success()