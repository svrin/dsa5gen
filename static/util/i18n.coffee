###
  Marking of translatable strings

  This function additional registers all strings for the find_all function
###

window.mapping = {}

__ = (x) ->

  # Find the base of the string, excludign all (...) spezialisations
  base = x
  while base.indexOf("(") >= 0
    start = base.indexOf("(")
    ends = base.indexOf(")", start)
    base = base.substr(0, start) + base.substr(ends)
    base = base.trim()

  # Have the base
  if not window.mapping[base]
    window.mapping[base] = {}

  # Add it to mapping
  window.mapping[base][x] = true

  # Return it unchanged
  return x
