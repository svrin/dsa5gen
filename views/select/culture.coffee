###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/culture', 'text!templates/culture.hbs'], (BaseView, cultures, hbs) ->
  class CultureView extends BaseView
    name: 'culture'
    caption: __("Kultur")
    sub_template: _.template(hbs)

    event: ['change:culture', 'change:race', 'change:profile']
    collection: cultures

    # Filter
    options:
      common: [__('Geläufige Kulturen'), (culture) ->
        return race.get('cultures').indexOf(culture.get('name')) >= 0
      ]

      all: [__('Alle Kulturen'), () ->
        return true
      ]

    # Previous & Following tab
    prev: 'race'
    next: 'profession'

    render: ->
      rtn = super()

      # Variables used
      culture = this.model.get('culture')
      profile = this.model.get('profile')

      # The additional informations are only available when a race has been selected
      return rtn if not culture

      # Append subtemplate
      @$el.append @sub_template({character: @model, self: @, culture: culture})
      @delegateEvents()

      # Build the mother tong select
      @.build_select culture, profile, 'speech'

      # Build the social state select
      @.build_select culture, profile, 'social'

      # Build the culture knowledge select
      @.build_select culture, profile, 'knowledge'






