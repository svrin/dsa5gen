###
  A culture
###

define ["models/base"], (Model) ->
  class Skill extends Model


    # Value
    toString: (value) ->
      if @.get('max') == 1 and value
        return @.get('name')
      else if @.get('max') == 1 and not value
        return ""

      if @.get('count') == 'roman'
        return @.get('name') + ": " + ["0", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X"][value]

      if @.get('min') >= value
        return @.get('name') + ": " + @.get('min')

      if not value
        return @.get('name') + ": 0"
      return @.get('name') + ": " + value

    # Liturgy
    liturgyGroups: [
      __('Liturgien')
      __('Segen')
      __('Klerikerikale Sonderfertigkeiten')
    ]
    isLiturgy: ->
      return _.intersection(@.liturgyGroups, @.get('groups')).length > 0

    # Magic
    magicGroups: [
      __('Zauber')
      __('Rituale')
      __('Stabzauber')
      __('Elfenlieder')
      __('Hexenflüche')
      __('Magische Sonderfertigkeiten')
      __('Vertrautenmagie')
      __('Zaubertricks')
    ]
    isMagic: ->
      return _.intersection(@.magicGroups, @.get('groups')).length > 0

    # Vantages
    vantageGroups: [
      __('Nachteile')
      __('Schlechte Eigenschaft')
      __('Schlechte Angewohnheiten')
      __('Vorteile')
    ]
    isVantage: ->
      return _.intersection(@.vantageGroups, @.get('groups')).length > 0

    # Battles
    battleGroups: [
      __('Kampftechniken')
      __('Kampfstile')
      __('Kampfsonderfertigkeiten')
    ]
    isBattle: ->
      return _.intersection(@.battleGroups, @.get('groups')).length > 0
