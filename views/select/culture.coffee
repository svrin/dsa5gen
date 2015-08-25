###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/culture', 'data/animal',
        'text!templates/culture.hbs'], (BaseView, cultures, animals, hbs) ->
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

    initialize: (options) ->
      super options

      @listenTo @.collection, "reset", @render
      @listenTo @.collection, "add", @add_equipment

      # on keyinput the options are filtered
      @.$el.off "click.dsa5gen.culture-packet-buy"
      @.$el.on "click.dsa5gen.culture-packet-buy", "button[name='profile.select.character.profile.packet']", @buy_packet

    buy_packet: =>
      culture = this.model.get('culture')
      _.each culture.get('ultra'), (talent) =>
        if talent[1]
          this.model.incr("skills", talent[0], talent[1])

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

      # Build familiar select
      node = @.$el.find("[name='character.familiar']")
      animals.each (animal) ->
        item_node = $("<option>").text(animal.get('name')).attr("value", animal.get('name'))
        node.find('optgroup').append(item_node)







