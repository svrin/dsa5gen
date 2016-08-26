###
  An equipment
###

define ["models/base"], (Model) ->
  class Equipment extends Model

    getBonusAttribute: (character, attributes = null) ->
      bonus = @.get('bonus')

      if _.isArray(bonus['attribute'])
        attributes = character.get('attributes') if not attributes

        bonus_attribute = "NN"
        bonus_value = 0

        _.each bonus['attribute'], (attribute) ->
          console.log "Test", bonus_value, attribute, bonus['attribute'], bonus_attribute
          if _.indexOf(bonus['attribute'], attribute) >= 0
            console.log "Is Index"
            if attributes[attribute] >= bonus_value
              bonus_attribute = attribute
              bonus_value = attributes[attribute]
          else
            console.log "Is Not Index"

        return bonus_attribute
      else
        return bonus['attribute']

