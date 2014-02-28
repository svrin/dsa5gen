###
  A character is the aggregation of a race x culture x profession
  with choosen skills and equipment
###

define ['data/race', 'data/culture', 'data/profession'], (races, cultures, professions) ->
  class Character extends Backbone.Model
    idAttribute: 'uuid'

    properties: {}

    defaults:
      name: "Neue Heldin"

      race: null
      culture: null
      profession: null

      attributes:
        MU: 0
        KL: 0
        IN: 0
        CH: 0
        FF: 0
        GE: 0
        KO: 0
        KK: 0

    initialize: () =>
      pget @, 'race', races
      pget @, 'culture', cultures
      pget @, 'profession', professions

      cget @, 'attributes', ['race', 'culture', 'profession'], @calc_attributes

      if not @id
        @set('uuid', uuid())

    get: (attr) ->
      ###
        Overwritten for allowing @pget and @cget calls
      ###

      # .get(_) calls bypass property functions
      if attr.startsWith("_")
        return @.attributes[attr.substr(1)]

      value = @.attributes[attr]

      if _.isFunction(value)
        value = value(@)

      func = @['properties'][attr]
      if func?
        value = func(value)

      return value

    calc_attributes: (attributes) ->
      ###
        Calculates the attributes for this character
      ###

      attributes["MR"] = (attributes["MU"] + attributes["KL"] + attributes["KO"]) / 5

      attributes["LeP"] = (attributes["KO"] + attributes["KO"] + attributes["KK"]) / 2
      attributes["AuP"] = (attributes["MU"] + attributes["KO"] + attributes["GE"]) / 2
      attributes["AsP"] = (attributes["MU"] + attributes["IN"] + attributes["CH"]) / 2

      attributes["AT"] = (attributes["MU"] + attributes["GE"] + attributes["KK"]) / 5
      attributes["PA"] = (attributes["IN"] + attributes["GE"] + attributes["KK"]) / 5
      attributes["FK"] = (attributes["IN"] + attributes["FF"] + attributes["KK"]) / 5

      return attributes








###
  RFC1422-compliant Javascript UUID function. Generates a UUID from a random
  number (which means it might not be entirely unique, though it should be
  good enough for many uses). See http://stackoverflow.com/questions/105034
###
uuid = ->
  'cxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, (c) ->
    r = Math.random() * 16 | 0
    v = if c is 'x' then r else (r & 0x3 | 0x8)
    v.toString(16)
  )

###
  A getter property wrapper for defining proxy getter

  pget @, name, collection

  will add a property name that uses the collection to resolve @.get(name)
###

pget = (_this, prop, collection) ->
  func = (value) ->
    return collection.get(value)
  _this['properties'][prop] = func

###
  A getter property wrapper for defining a proxy getter over all collections

  cget @, name, callback

  will add a property nam the uses function to resolve
###
cget = (_this, prop, collections, callback) ->
  func = (rtn) ->
    rtn = rtn || {}

    for collection in collections
      ref = _this.get(collection)
      if not ref
        continue

      value = ref.get(prop)
      if value
        $.extend(rtn, value)

    if callback
      return callback(rtn)
    else
      rtn
  _this['properties'][prop] = func






