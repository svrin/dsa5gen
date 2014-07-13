###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/race', 'text!templates/race.hbs'], (BaseView, races, hbs) ->
  class RaceView extends BaseView
    name: 'race'
    caption: __("Rasse")
    sub_template: _.template(hbs)

    event: ['change:race', 'change:profile']
    collection: races

    # Following tab
    prev: 'profile'
    next: 'culture'

    render: ->
      rtn = super()

      # Variables used
      race = this.model.get('race')
      profile = this.model.get('profile')

      # The additional informations are only available when a race has been selected
      return rtn if not race

      # Append subtemplate
      @$el.append @sub_template({character: @model, self: @, race: race})
      @delegateEvents()

      # Build the hair select
      @.build_select race, profile, 'hair'

      # Build the eye select
      @.build_select race, profile, 'eye'

      # Height
      height = profile.height or race.get('height', this.model)?[0]
      @.$el.find("[name='character.profile.height']").val(height)

      # Weight
      weight = profile.weight or race.get('weight', this.model)
      @.$el.find("[name='character.profile.weight']").val(weight)






