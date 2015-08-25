###
  A culture
###

define ["models/base"], (Model) ->
  class Skill extends Model

    # Get Costs
    getCosts: (value) ->
      if @.get('SF') == "A"
        switch value
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
          else
            0
      else if @.get('SF') == "B"
        switch value
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
          else
            0
      else if @.get('SF') == "C"
        switch value
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
          else
            0
      else if @.get('SF') == "D"
        switch value
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
          else
            0
      else if @.get('SF') == "E"
        switch value
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
          else
            0

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
      __('Segnungen')
      __('Zeremonien')
      __('Klerikale Sonderfertigkeiten')
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

    # Sonderfertigkeiten
    capabilityGroups: [
      __('Allgemeine Sonderfertigkeiten')
      __('Magische Sonderfertigkeiten')
      __('Klerikale Sonderfertigkeiten')
      __('Sprachsonderfertigkeiten')
      __('Kampfsonderfertigkeiten')
    ]
    isCapability: ->
      return _.intersection(@.capabilityGroups, @.get('groups')).length > 0

    # Battles
    battleGroups: [
      __('Kampftechniken')
      __('Kampfstile')
      __('Kampfsonderfertigkeiten')
    ]
    isBattle: ->
      return _.intersection(@.battleGroups, @.get('groups')).length > 0
