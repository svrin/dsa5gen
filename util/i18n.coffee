###
  Marking of translatable strings

  This function additional registers all strings for the find_all function
###

window.mapping = {}
window.locale = {}

# Load correct language dependency
# Currently only german exists
require ['i18n!gen/nls/nls'], (locale) ->
  window.locale = locale

# Define the __ function
__ = (x) ->

  # Bool check
  return __("ja") if x is true
  return __("nein") if x is false

  # NaN is still NaN
  return x if !x

  # We don't care about numbers
  if (typeof x != "string")
    console.warn "Got #{typeof x} in i18n.__ function"
    return x

  # Find the base of the string, excluding all (...) spezialisations
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

  # Return it translated
  if window.locale
    return window.locale[x] and window.locale[x] or x
  else
    return x