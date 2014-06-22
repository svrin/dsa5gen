###
  A character is the aggregation of a race x culture x profession
  with choosen skills and equipment
###

define ["models/base", 'data/race', 'data/culture', 'data/profession',
        'data/lifegrade', 'data/skill'], (Model, races, cultures, professions, lifegrades, skills) ->
  class Character extends Model
    idAttribute: 'uuid'

    properties: {}

    defaults:
      name: "Neue Heldin"

      race: null
      culture: null
      profession: null
      lifegrade: null

      profile: {}
      skills: {}

      attributes:
        MU: 8
        KL: 8
        IN: 8
        CH: 8
        FF: 8
        GE: 8
        KO: 8
        KK: 8

    initialize: () =>
      pget @, 'race', races
      pget @, 'culture', cultures
      pget @, 'profession', professions
      pget @, 'lifegrade', lifegrades

      fget @, 'attributes', @calc_attributes
      fget @, 'costs', @calc_costs
      fget @, 'skills', @calc_skills

      if not @id
        @set('uuid', uuid())

    incr: (attr, key, value) =>
      if not value
        value = 1

      if attr and key
        @.set attr, key, (@.attributes[attr][key] || 0) + value
      else
        @.set attr, (@.attributes[attr] || 0) + value

    decr: (attr, key, value) =>
      if not value
        value = 1

      gtz = (value) ->
        value > 0 and value or 0

      if attr and key
        @.set attr, key, gtz(@.attributes[attr][key] - value)
      else
        @.set attr, gtz(@.attributes[attr] - value)

    set: (attr..., value) =>
      ###
        Overwritten for allowing beside of the @set(attr, value) call
        the additional @set(attr, key, value) call
      ###
      if not (0 <= attr.length <= 2)
        throw "Unexpected attribute set length: #{attr.length}"

      if attr.length == 0
        super value
      else if attr.length == 1
        super attr[0], value
      else
        ref = @.attributes[attr[0]]
        ref[attr[1]] = value
        @trigger "change:#{attr[0]}:#{attr[1]}", this, attr, value
        @trigger "change:#{attr[0]}", this, attr, value

      return @

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

    calc_skills: (top) =>
      ###
        Calulcates the skills for a character
      ###
      character = @

      base = {}
      lambda = (element) =>
        if _.isFunction(element)
          element = element(character)

        if _.isString(element)
          base[element] = true
        else if _.isArray(element)
          base[element[0]] = (base[element[0]] || 0) + element[1]
        else if element.constructor.name == 'ChoiceView'
          console.log "Do something about this"
        else
          throw "Unexpected element in list"

      # Add content from race
      race = character.get('race')
      if race
        _.each race.get('auto'), lambda

      # Add content from culture
      culture = character.get('culture')
      if culture
        _.each culture.get('auto'), lambda

      # Add content from profession
      profession = character.get('profession')
      if profession
        _.each profession.get('auto'), lambda

      # Now base each skill with it min and add the current value on top of it
      skills.each (skill) =>
        key = skill.get('name')
        if skill.get('min') >= 1
          base[key] = Math.max(base[key] || 0, skill.get('min'))

        base[key] = (base[key] || 0) + (top[key] || 0)

      return base

    calc_costs: (costs) =>
      ###
        Calculates the costs for this character
      ###
      character = @
      costs = costs? || 0

      race = character.get('race')
      if race
        costs += race.get('costs') || 0

      culture = character.get('culture')
      if culture
        costs += culture.get('costs') || 0

      profession = character.get('profession')
      if profession
        costs += profession.get('costs') || 0

      # Add costs from attributes
      _.each character.attributes['attributes'], (value, key) =>
        costs += switch value
          when 20 then 1320
          when 19 then 1040
          when 18 then 800
          when 17 then 600
          when 16 then 440
          when 15 then 320
          when 14 then 240
          when 13 then 200
          when 12 then 160
          when 11 then 120
          when 10 then 80
          when  9 then 40
          else
            0

      # Add costs from skills
      _.each character.attributes['skills'], (value, key) =>
        skill = skills.get(key)
        if skill.get('costs')
          costs += value * skill.get('costs')
        else if skill.get('SF') == "A"
          costs += value * 5
        else if skill.get('SF') == "B"
          costs += value * 10
        else if skill.get('SF') == "C"
          costs += value * 15
        else
          console.error "Unknown cost table for skill " + skill.get('name')


      return costs


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

      attributes["LE"] = (attributes["LE"] || 0) + Math.max(attributes["KO"] - 10, 0)
      attributes["AE"] = (attributes["AE"] || 0)
      attributes["KE"] = (attributes["KE"] || 0)
      attributes["MR"] = (attributes["MR"] || 0) + Math.max(attributes["MU"] - 10, 0)
      attributes["GS"] = (attributes["GS"] || 0) + Math.max(attributes["GE"] - 10, 0)
      attributes["WS"] = Math.ceil((attributes["KO"] || 0) / 2)

      attributes["INI"] = (attributes["INI"] || 0) + Math.max(attributes["IN"] - 10, 0)
      attributes["EDG"] = 3

      attributes["AT/PA_GE"] = 5 + Math.max(attributes["GE"] - 10, 0)
      attributes["AT/PA_KK"] = 5 + Math.max(attributes["KK"] - 10, 0)
      attributes["AT/PA_FF"] = 5 + Math.max(attributes["FF"] - 10, 0)
      attributes["FK"] = 5 + Math.max(attributes["FF"] - 10, 0)

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






