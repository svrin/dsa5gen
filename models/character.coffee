###
  A character is the aggregation of a race x culture x profession
  with choosen skills and equipment
###

define ["models/base", 'data/race', 'data/culture', 'data/profession', 'data/lifegrade', 'data/skill',
        'data/equipment',
        'data/animal'], (Model, races, cultures, professions, lifegrades, skills, equipments, animals) ->
  class Character extends Model
    idAttribute: 'uuid'

    defaults:
      name: "Neue Heldin"

      race: null
      culture: null
      profession: null

      lifegrade: null
      social: null

      familiar: null

      profile: {}
      skills: {}
      equipments: {}

      attributes:
        MU: 8
        KL: 8
        IN: 8
        CH: 8
        FF: 8
        GE: 8
        KO: 8
        KK: 8

    initialize: () ->
      super

      @['properties'] = {}

      pget @, 'race', races
      pget @, 'culture', cultures
      pget @, 'profession', professions
      pget @, 'lifegrade', lifegrades
      pget @, 'familiar', animals

      fget @, 'attributes', @calc_attributes
      fget @, 'costs', @calc_costs
      fget @, 'skills', @calc_skills
      fget @, 'social', @calc_social

      fget @, 'recommendations', @calc_recommendations

      fget @, 'AP', @calc_ap
      fget @, 'V', @calc_v

      if not @id
        @set('uuid', uuid())

    incr: (attr, key, value, options) ->
      if _.isObject(value) && !options
        options = value
        value = null

      if not value
        value = 1

      v_max = (options && options['max']) || 18

      ltz = (value) ->
        value < v_max and value or v_max

      if attr and key
        current = @.attributes[attr][key] || 0
      else
        current = @.attributes[attr] || 0

      if _.isArray(current)
        current[0] = ltz(current[0] + value)
      else
        current = ltz(current + value)

      if attr and key
        @.set attr, key, current
      else
        @.set attr, current

    decr: (attr, key, value, options) ->
      if _.isObject(value) && !options
        options = value
        value = null

      if not value
        value = 1

      v_min = (options && options['min']) || 0

      gtz = (value) ->
        value > v_min and value or v_min

      if attr and key
        current = @.attributes[attr][key] || 0
      else
        current = @.attributes[attr] || 0

      if _.isArray(current)
        current[0] = gtz(current[0] - value)
      else
        current = gtz(current - value)

      if attr and key
        @.set attr, key, current
      else
        @.set attr, current

    dialect: (attr, key, value, options) ->
      if _.isObject(value) && !options
        options = value
        value = null

      if attr and key
        current = @.attributes[attr][key] || 0
      else
        current = @.attributes[attr] || 0

      console.log("dialect", attr, key, current, value)

      if _.isArray(current) and value
        current[1] = value
      else if _.isArray(current) and !value
        current = current[0]
      else if !_.isArray(current) and value
        current = [current, value]
      else if !_.isArray(current) and !value
        current = current

      console.log("dialect", attr, key, current, value)

      if attr and key
        @.set attr, key, current
      else
        @.set attr, current

    set: (attr..., value) ->
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

    get: (attr, context) ->
      ###
        Overwritten for allowing @pget calls
        and evaluating functions on the fly
      ###

      # .get(_) calls bypass property functions
      if attr.startsWith("_")
        return @.attributes[attr.substr(1)]

      value = @.attributes[attr]

      if _.isFunction(value)
        value = value.call(context or @)

      func = @['properties'][attr]
      if func?
        return func.call(context or @, _.clone(value))

      return value

    calc_ap: (top) ->
      ###
        Compelte AP of character
      ###
      character = @

      return (character.get('lifegrade').get('AP') || 0) + (top || 0)

    calc_social: (top) ->
      ###
        Returns Mittelschicht if not set
      ###
      if not top? or not top
        return __("Mittelschicht")
      else
        return top

    calc_recommendations: (top) ->
      ###
        Collects all recommendations for a character
      ###
      character = @

      base = {}
      lambda = (weight, element) ->
        if not element? || not element
          return

        if _.isFunction(element)
          element = element(character)

        if _.isArray(element)
          element = element[0]

        if !_.isString(element) && element.elements?
          # @TODO: For now we just add all elements of the choice view!
          # It would be better of course to respect it and add a check
          # that only exactly amounts elements have been choosen
          for ec in element.elements
            if weight > 0 && (!base[ec] || base[ec] == "common")
              base[ec] = "common"
            else if weight < 0 && (!base[ec] || base[ec] == "uncommon")
              base[ec] = "uncommon"
            else
              base[ec] = "undef"
          console.debug "Unwired choice view"
          return

        if !_.isString(element)
          console.error "Unexpected element in common/uncommon list", element
          return

        if weight > 0 && (!base[element] || base[element] == "common")
          base[element] = "common"
        else if weight < 0 && (!base[element] || base[element] == "uncommon")
          base[element] = "uncommon"
        else
          base[element] = "undef"

      # Add content from race
      race = character.get('race')
      if race
        _.each race.get('common'), _.partial(lambda, 1);
        _.each race.get('uncommon'), _.partial(lambda, -1);

      # Add content from culture
      culture = character.get('culture')
      if culture
        _.each culture.get('common'), _.partial(lambda, 1);
        _.each culture.get('uncommon'), _.partial(lambda, -1);

      # Add content from profession
      profession = character.get('profession')
      if profession
        _.each profession.get('common'), _.partial(lambda, 1);
        _.each profession.get('uncommon'), _.partial(lambda, -1);

      return base

    calc_v: (top) ->
      ###
        Calculates the skills for a familiar
      ###
      if not @.attributes['familiar']
        return {}

      familiar = animals.get(@.attributes['familiar'])
      character = @

      base = top || {}
      lambda = (element) =>
        if not element? || not element
          return

        if _.isFunction(element)
          element = element(character)

        if _.isString(element)
          base[element] = true
        else if _.isArray(element)

          if _.isString(element[1])
            if base[element[0]]
              base[element[0]] = base[element[0]] + "; " + element[1]
            else
              base[element[0]] = element[1]
          else
            base[element[0]] = (base[element[0]] || 0) + element[1]
        else if element.constructor.name == 'PoolView'
          element.$el.insertAfter $("[name='character.ap']")
        else if element.constructor.name == 'ChoiceView'
          console.warn "Do something about this"
        else
          console.warn "Unexpected element in list", element
          throw "Unexpected element in list"

      _.each character.get('skills'), (value, key) =>
        if key.startsWith("V_")
          lambda([key, value])

      _.each character.get('attributes'), (value, key) =>
        if key.startsWith("V_")
          lambda([key, value])

      _.each familiar.get('auto'), lambda

      _.each familiar.get('attributes'), (value, key) =>
        lambda(["V_" + key, value])

      return base

    calc_skills: (top) ->
      ###
        Calculates the skills for a character
      ###
      character = @

      base = {}
      lambda = (element) =>
        if not element? || not element
          return

        if _.isFunction(element)
          element = element(character)

        if _.isString(element)
          base[element] = true
        else if _.isArray(element)

          if _.isString(element[1])
            if base[element[0]]
              base[element[0]] = base[element[0]] + "; " + element[1]
            else
              base[element[0]] = element[1]
          else
            base[element[0]] = (base[element[0]] || 0) + element[1]
        else if element.constructor.name == 'PoolView'
          element.$el.insertAfter $("[name='character.ap']")
        else if element.constructor.name == 'ChoiceView'
          console.warn "Do something about this"
        else
          console.warn "Unexpected element in list", element
          throw "Unexpected element in list"

      # Add content from race
      race = character.get('race')
      if race
        _.each race.get('auto'), lambda

      # Add content from culture
      culture = character.get('culture')
      if culture
        _.each culture.get('auto'), lambda

      # Add 3 in mother language
      speech = character.get('profile')['speech']
      if speech
        speech = __base(speech)
        lambda([speech, 3])

      # Add content from profession
      profession = character.get('profession')
      if profession
        _.each profession.get('auto'), lambda

      # Now base each skill with it min and add the current value on top of it
      skills.each (skill) =>
        key = skill.get('name')

        current_top = (top[key] || 0)
        if _.isArray(current_top)
          current_top_value = current_top[0] || 0
        else
          current_top_value = current_top || 0

        current_base = (base[key] || 0)
        if _.isArray(current_base)
          current_base_value = current_base[0] || 0
        else
          current_base_value = current_base || 0

        if skill.get('min') >= 1
          current_base_value = Math.max(current_base_value, skill.get('min'))

        current_base_value += current_top_value
        if _.isArray(current_base) && _.isArray(current_top)
          base[key] = [current_base_value].concat(_.union(_.rest(current_base), _.rest(current_top)))
        else if _.isArray(current_base)
          base[key] = [current_base_value].concat(_.rest(current_base))
        else if _.isArray(current_top)
          base[key] = [current_base_value].concat(_.rest(current_top))
        else
          base[key] = current_base_value

        # Add all auto things of selected skills
        i = current_base_value || 0
        while i-- > 0
          _.each skill.get('auto'), lambda

        # Return blank
        return

      return base

    hasMagic: () ->
      ###
        Detect whether this is a magic awoken character
      ###
      if @.attributes['skills'][__('Zauberer')] > 0
        return true

      return undefined isnt _.find @.get('skills'), (value, key) ->
        if value and skills.get(key) and skills.get(key).isMagic()
          return true

    hasFamiliar: () ->
      ###
        Detect whether this is character needs a familiar
      ###
      if @.attributes['skills'][__('Zaubertradition mit Vertrautentiere')] > 0
        return true

      return undefined isnt _.find @.get('skills'), (value, key) ->
        if key == __('Zaubertradition mit Vertrautentiere')
          return true

    hasLiturgy: () ->
      ###
        Detect whether this is a magic awoken character
      ###
      if @.attributes['skills'][__('Geweihter')] > 0
        return true

      return undefined isnt _.find @.get('skills'), (value, key) ->
        if value and skills.get(key) and skills.get(key).isLiturgy()
          return true

    get_skill_items: () ->
      ###
        Get a key, value, node list of all skills
      ###
      character = @

      rtn = {}
      _.each @.get('skills'), (value, key) ->
        if value
          skill = skills.get(key)
          rtn[key] = {
            key: key
            value: value
            item: skill
            groups: skill.get('groups') if skill
          }
      return rtn

    get_equipment_items: () ->
      ###
        Get a key, value, node list of all equipments
      ###
      character = @

      rtn = {}
      _.each @.get('equipments'), (value, key) ->
        if value
          equipment = equipments.get(key)
          rtn[key] = {
            key: key
            value: value
            item: equipment
            groups: equipment.get('groups') if equipment
          }
      return rtn


    calc_costs: (costs) ->
      ###
        Calculates the costs for this character
      ###
      character = @

      costs = costs? || 0
      groups = {}

      # Add costs from attributes
      _.each character.attributes['attributes'], (value, key) =>
        if key.startsWith("V_")
          if key in ["V_MU", "V_KL", "V_IN", "V_CH", "V_FF", "V_GE", "V_KO", "V_KK"]
            value = value * 40
          else
            value = value * 15
          costs += value
          groups["Vertrauter"] = (groups["Vertrauter"] || 0) + (value || 0)
        else
          costs += switch value
            when 20 then 495
            when 19 then 390
            when 18 then 300
            when 17 then 225
            when 16 then 165
            when 15 then 120
            when 14 then 90
            when 13 then 75
            when 12 then 60
            when 11 then 45
            when 10 then 30
            when  9 then 15
            else
              0

      # Add costs from skills
      # and bundle them in their groups
      _.each character.attributes['skills'], (value, key) =>
        skill = skills.get(key)

        # Context
        if _.isArray(value) and value[1]
          context = [skill, skills.get(value[1])]
          value = value[0]
        else
          context = [skill]

        # Maybe lost from a previous version
        if not skill
          console.warn "Lost skill in data", key, value
          return

        # Calculate
        skill_costs = skill.get('costs', context)
        if skill_costs and not skill.get('SF')
          costs += (value * skill_costs || 0)
        else
          costs += (skill_costs || 0)

        if skill.get('SF') == "A"
          costs += switch value
            when 25 then 12 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12 + 13 + 14
            when 24 then 12 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12 + 13
            when 23 then 12 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11 + 12
            when 22 then 12 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10 + 11
            when 21 then 12 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9 + 10
            when 20 then 12 + 2 + 3 + 4 + 5 + 6 + 7 + 8 + 9
            when 19 then 12 + 2 + 3 + 4 + 5 + 6 + 7 + 8
            when 18 then 12 + 2 + 3 + 4 + 5 + 6 + 7
            when 17 then 12 + 2 + 3 + 4 + 5 + 6
            when 16 then 12 + 2 + 3 + 4 + 5
            when 15 then 12 + 2 + 3 + 4
            when 14 then 12 + 2 + 3
            when 13 then 12 + 2
            when 12 then 12
            when 11 then 11
            when 10 then 10
            when  9 then 9
            when  8 then 8
            when  7 then 7
            when  6 then 6
            when  5 then 5
            when  4 then 4
            when  3 then 3
            when  2 then 2
            when  1 then 1
            else 0
        else if skill.get('SF') == "B"
          costs += switch value
            when 25 then 24 + 4 + 6 + 8 + 10 + 12 + 14 + 16 + 18 + 20 + 22 + 24 + 26 + 28
            when 24 then 24 + 4 + 6 + 8 + 10 + 12 + 14 + 16 + 18 + 20 + 22 + 24 + 26
            when 23 then 24 + 4 + 6 + 8 + 10 + 12 + 14 + 16 + 18 + 20 + 22 + 24
            when 22 then 24 + 4 + 6 + 8 + 10 + 12 + 14 + 16 + 18 + 20 + 22
            when 21 then 24 + 4 + 6 + 8 + 10 + 12 + 14 + 16 + 18 + 20
            when 20 then 24 + 4 + 6 + 8 + 10 + 12 + 14 + 16 + 18
            when 19 then 24 + 4 + 6 + 8 + 10 + 12 + 14 + 16
            when 18 then 24 + 4 + 6 + 8 + 10 + 12 + 14
            when 17 then 24 + 4 + 6 + 8 + 10 + 12
            when 16 then 24 + 4 + 6 + 8 + 10
            when 15 then 24 + 4 + 6 + 8
            when 14 then 24 + 4 + 6
            when 13 then 24 + 4
            when 12 then 24
            when 11 then 22
            when 10 then 20
            when  9 then 18
            when  8 then 16
            when  7 then 14
            when  6 then 12
            when  5 then 10
            when  4 then 8
            when  3 then 6
            when  2 then 4
            when  1 then 2
            else 0
        else if skill.get('SF') == "C"
          costs += switch value
            when 25 then 36 + 6 + 9 + 12 + 15 + 18 + 21 + 24 + 27 + 30 + 33 + 36 + 39 + 42
            when 24 then 36 + 6 + 9 + 12 + 15 + 18 + 21 + 24 + 27 + 30 + 33 + 36 + 39
            when 23 then 36 + 6 + 9 + 12 + 15 + 18 + 21 + 24 + 27 + 30 + 33 + 36
            when 22 then 36 + 6 + 9 + 12 + 15 + 18 + 21 + 24 + 27 + 30 + 33
            when 21 then 36 + 6 + 9 + 12 + 15 + 18 + 21 + 24 + 27 + 30
            when 20 then 36 + 6 + 9 + 12 + 15 + 18 + 21 + 24 + 27
            when 19 then 36 + 6 + 9 + 12 + 15 + 18 + 21 + 24
            when 18 then 36 + 6 + 9 + 12 + 15 + 18 + 21
            when 17 then 36 + 6 + 9 + 12 + 15 + 18
            when 16 then 36 + 6 + 9 + 12 + 15
            when 15 then 36 + 6 + 9 + 12
            when 14 then 36 + 6 + 9
            when 13 then 36 + 6
            when 12 then 36
            when 11 then 33
            when 10 then 30
            when  9 then 27
            when  8 then 24
            when  7 then 21
            when  6 then 18
            when  5 then 15
            when  4 then 12
            when  3 then 9
            when  2 then 6
            when  1 then 3
            else 0
        else if skill.get('SF') == "D"
          costs += switch value
            when 25 then 48 + 8 + 12 + 16 + 20 + 24 + 28 + 32 + 36 + 40 + 44 + 48 + 52 + 56
            when 24 then 48 + 8 + 12 + 16 + 20 + 24 + 28 + 32 + 36 + 40 + 44 + 48 + 52
            when 23 then 48 + 8 + 12 + 16 + 20 + 24 + 28 + 32 + 36 + 40 + 44 + 48
            when 22 then 48 + 8 + 12 + 16 + 20 + 24 + 28 + 32 + 36 + 40 + 44
            when 21 then 48 + 8 + 12 + 16 + 20 + 24 + 28 + 32 + 36 + 40
            when 20 then 48 + 8 + 12 + 16 + 20 + 24 + 28 + 32 + 36
            when 19 then 48 + 8 + 12 + 16 + 20 + 24 + 28 + 32
            when 18 then 48 + 8 + 12 + 16 + 20 + 24 + 28
            when 17 then 48 + 8 + 12 + 16 + 20 + 24
            when 16 then 48 + 8 + 12 + 16 + 20
            when 15 then 48 + 8 + 12 + 16
            when 14 then 48 + 8 + 12
            when 13 then 48 + 8
            when 12 then 48
            when 11 then 44
            when 10 then 40
            when  9 then 36
            when  8 then 32
            when  7 then 28
            when  6 then 24
            when  5 then 20
            when  4 then 16
            when  3 then 12
            when  2 then 8
            when  1 then 4
            else 0
        else if skill.get('SF') == "E"
          costs += switch value
            when 25 then 1375
            when 24 then 1195
            when 23 then 1030
            when 22 then 880
            when 21 then 745
            when 20 then 625
            when 19 then 510
            when 18 then 420
            when 17 then 345
            when 16 then 285
            when 15 then 240
            when 14 then 210
            when 13 then 195
            when 12 then 180
            when 11 then 165
            when 10 then 150
            when  9 then 135
            when  8 then 120
            when  7 then 105
            when  6 then 90
            when  5 then 75
            when  4 then 60
            when  3 then 45
            when  2 then 30
            when  1 then 15
            else 0
        else if !skill_costs?
          console.error "Unknown cost table for skill " + skill.get('name')

        # Sum group costs up
        _.each skill.get('groups'), (group) ->
          groups[group] = (groups[group] || 0) + (value || 0)

      # Get costs from race
      race = character.get('race')
      if race
        costs += race.get('costs') || 0

        # Update pools
        _.each race.get('auto'), (element) ->
          if element.constructor.name == 'PoolView'
            costs -= element.refresh(character, groups)

      # Get costs from culture
      culture = character.get('culture')
      if culture
        costs += culture.get('costs') || 0

        # Update pools
        _.each culture.get('auto'), (element) ->
          if element.constructor.name == 'PoolView'
            costs -= element.refresh(character, groups)

      # Get costs from profession
      profession = character.get('profession')
      if profession
        costs += profession.get('costs') || 0

        # Update pools
        _.each profession.get('auto'), (element) ->
          if element.constructor.name == 'PoolView'
            costs -= element.refresh(character, groups)

      return costs

    calc_attributes: (attributes) ->
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

      # Some things depend on skills
      c_skills = character.get('skills')

      # P56: LE = Grundwert + KO * 2 + Vantages
      attributes["LE"] = (attributes["LE"] || 0) + (attributes["KO"] * 2 || 0) + (c_skills['LE'] || 0)

      # P57: SK = Grundwert + (MU + KL + IN) / 6 + Vantages
      attributes["SK"] = (attributes["SK"] || 0) + Math.ceil((attributes["MU"] / 6 || 0) + (attributes["KL"] / 6 || 0) + (attributes["IN"] / 6 || 0)) + (c_skills['SK'] || 0)

      # P57: ZK = Grundwert + (KO + KK + KK) / 6 + Vantages
      attributes["ZK"] = (attributes["ZK"] || 0) + Math.ceil((attributes["KO"] / 3 || 0) + (attributes["KK"] / 6 || 0)) + (c_skills['ZK'] || 0)

      # P57: AW = Grundwert + GE / 2 + Vantages
      attributes["AW"] = (attributes["AW"] || 0) + Math.ceil((attributes["GE"] / 2 || 0)) + (c_skills['AW'] || 0)

      # P57: INI = Grundwert + (MU + GE) / 2 + Vantages
      attributes["INI"] = (attributes["INI"] || 0) + Math.ceil((attributes["MU"] / 2 || 0) + (attributes["GE"] / 2 || 0)) + (c_skills['INI'] || 0)

      # P57: GS = Grundwert +  Vantages
      attributes["GS"] = (attributes["GS"] || 0) + (c_skills['GS'] || 0)

      # Astralenergie / Karmalenergie (only calculate if given)
      attributes["AE"] = (attributes["AE"] || 0) + (c_skills['AE'] || 0)
      attributes["KE"] = (attributes["KE"] || 0) + (c_skills['KE'] || 0)

      # P56: + Leiteigenschaft der Zaubertradition/Geweihtentradition
      attribute = profession?.get?('attribute')
      if attribute
        attributes["AE"] += (attributes[attribute] || 0)
        attributes["KE"] +=  (attributes[attribute] || 0)

      attributes["INI"] = (attributes["INI"] || 0) + Math.max(attributes["IN"] - 10, 0) + (c_skills['INI'] || 0)
      attributes["GLK"] = 3 + (c_skills['GLK'] || 0)

      attributes["AT/PA_GE"] = 5 + Math.max(attributes["GE"] - 10, 0)
      attributes["AT/PA_KK"] = 5 + Math.max(attributes["KK"] - 10, 0)
      attributes["AT/PA_FF"] = 5 + Math.max(attributes["FF"] - 10, 0)
      attributes["FK"] = 5 + Math.max(attributes["FF"] - 10, 0)

      # Add _max values if existent
      _.each attributes, (value, key) ->
        if c_skills[key + "_max"]
          attributes[key + "_max"] = (attributes[key + "_max"] || 0) + (c_skills[key + "_max"] || 0)


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






