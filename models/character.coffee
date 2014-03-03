###
  A character is the aggregation of a race x culture x profession
  with choosen skills and equipment
###

define ["models/base", 'data/race', 'data/culture', 'data/profession'], (Model, races, cultures, professions) ->
  class Character extends Model
    idAttribute: 'uuid'

    properties: {}

    defaults:
      name: "Neue Heldin"

      race: null
      culture: null
      profession: null

      attributes:
        MU: 10
        KL: 10
        IN: 10
        CH: 10
        FF: 10
        GE: 10
        KO: 10
        KK: 10

    initialize: () =>
      pget @, 'race', races
      pget @, 'culture', cultures
      pget @, 'profession', professions

      fget @, 'attributes', @calc_attributes

      if not @id
        @set('uuid', uuid())

    incr: (attr, key) =>

      value = @.attributes[attr]
      if key
        value[key] += 1
        @trigger 'change:' + attr + ":" + key, this
        @trigger 'change:' + attr, this
      else
        value += 1
        @set attr, value

    decr: (attr, key) =>

      value = @.attributes[attr]
      if key
        if value[key] > 0
          value[key] -= 1
          @trigger 'change:' + attr + ":" + key, this
          @trigger 'change:' + attr, this
      else
        if value > 0
          value -= 1
          @set attr, value

    get: (attr, context) =>
      ###
        Overwritten for allowing @pget calls
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
        return func(_.clone(value))

      return value

    calc_attributes: (attributes) =>
      ###
        Calculates the attributes for this character
      ###
      character = @

      race = character.get('race')
      if race && race.get('attributes')
        _.each race.get('attributes'), (value, key) ->
          attributes[key] = (attributes[key] || 0) + value

      culture = character.get('culture')
      if culture && culture.get('attributes')
        _.each culture.get('attributes'), (value, key) ->
          attributes[key] = (attributes[key] || 0) + value

      profession = character.get('profession')
      if profession && profession.get('attributes')
        _.each profession.get('attributes'), (value, key) ->
          attributes[key] = (attributes[key] || 0) + value

      attributes["MR"] = (attributes["MR"] || 0) + (attributes["MU"] + attributes["KL"] + attributes["KO"]) / 5

      attributes["LeP"] = (attributes["LeP"] || 0) + (attributes["KO"] + attributes["KO"] + attributes["KK"]) / 2
      attributes["AuP"] = (attributes["AuP"] || 0) + (attributes["MU"] + attributes["KO"] + attributes["GE"]) / 2
      attributes["AsP"] = (attributes["AsP"] || 0) + (attributes["MU"] + attributes["IN"] + attributes["CH"]) / 2

      attributes["AT"] = (attributes["AT"] || 0) + (attributes["MU"] + attributes["GE"] + attributes["KK"]) / 5
      attributes["PA"] = (attributes["PA"] || 0) + (attributes["IN"] + attributes["GE"] + attributes["KK"]) / 5
      attributes["FK"] = (attributes["FK"] || 0) + (attributes["IN"] + attributes["FF"] + attributes["KK"]) / 5

      # V4.1 Grundregelwerk #189
      attributes["GS"] = (attributes["GS"] || 0) + switch
        when attributes["GE"] <= 10 then 7
        when attributes["GE"] <= 15 then 8
        else 9

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
  A getter property wrapper for defining a proxy getter

  pget @, name, collection

  will add a property name that uses the collection to resolve @.get(name)
###

pget = (_this, prop, collection) ->
  func = (value) ->
    return collection.get(value)
  _this['properties'][prop] = func

###
  A getter property wrapper for defining a functional getter

  fget @, name, func

  will add a property name that uses the func to resolve @.get(name)
###

fget = (_this, prop, func) ->
_this['properties'][prop] = func






