###
  Configure backbone

  Overwrites Backbone sync method to to talk with localStorage
  instead of a server
###

Backbone.sync = (method, model, options) ->
  if not options.url?
    options.url = _.result(model, 'url') || urlError()

  if not options.data?
    options.data = options.attrs || model.toJSON(options);

  # Cannot save, because no localStorga existant
  if not window.localStorage
    return options['error']()

  # Save a collection
  if _.isArray(options.data)

    if method == "create" or method == "update" or method == "patch"
      _.each options.data, (model) ->
        model.save()
      return options['success']()

    if method == "delete"
      throw "method delete on collection, wtf?"

    if method == "read"
      data = []
      i = 0
      while i < window.localStorage.length
        key = window.localStorage.key i
        if key.startsWith(options.url)
          data.push JSON.parse(window.localStorage.getItem(key))
        i++
      model.reset data
    else
      throw "unknown method: " + method

    # Save a model
  else
    if method == "create" or method == "update"
      window.localStorage.setItem(options.url, JSON.stringify(options.data))
    else if method == "patch"
      data = JSON.parse(window.localStorage.getItem(options.url))
      $.extend(data, options.data)
      window.localStorage.setItem(options.url, JSON.stringify(data))
    else if method == "read"
      data = options["payload"] || JSON.parse(window.localStorage.getItem(options.url))
      model.set data
    else if method == "delete"
      window.localStorage.removeItem(options.url)
    else
      throw "unknown method: " + method

    options['success']?()
