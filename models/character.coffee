###
  A character is the aggregation of a race x culture x profession
  with choosen skills and equipment
###

define ['data/race', 'data/culture', 'data/profession'], (races, cultures, professions) ->
  class Character extends Backbone.Model
    idAttribute: 'uuid'

    defaults:
      name: "Neue Heldin"

      race: null
      culture: null
      profession: null

      attributes: {}

    initialize: () =>
      pget @, 'race', races
      pget @, 'culture', cultures
      pget @, 'profession', professions

      if not @id
        @set('uuid', uuid())


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
  func = () ->
    return collection.get(_this.get(prop))
  Object.defineProperty _this, prop, {func, configurable: yes}





