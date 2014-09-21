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

    render: ->
      rtn = super()

      # Variables used
      culture = this.model.get('culture')
      profile = this.model.get('profile')
      social = this.model.get('social')

      # The additional informations are only available when a race has been selected
      return rtn if not culture

      # Append subtemplate
      @$el.append @sub_template({character: @model, self: @, culture: culture})
      @delegateEvents()

      # Build the mother tong select
      @.build_select culture, profile, 'speech'

      # Build the culture knowledge select
      @.build_select culture, profile, 'knowledge'

      # Build familiar select
      node = @.$el.find("[name='character.familiar']")
      animals.each (animal) ->
        item_node = $("<option>").text(animal.get('name')).attr("value", animal.get('name'))
        node.find('optgroup').append(item_node)
      #if profile[attr]
      #  node.find('option:first').text(profile[attr]).val(profile[attr]).prop('selected', 'selected')

      # Build the social state select
      node = @.$el.find("[name='character.social']")
      _.each culture.get('social'), (item) ->
        return true if not item

        name = item[1]
        specialisations = _.tail(item, 2)

        if specialisations.length > 0
          optgroup = $("<optgroup>").appendTo(node).attr("label", name)

          _.each specialisations, (element) ->
            name = element[0]
            type = element[1]
            multiplicator = element[2]

            option = $("<option>").appendTo(optgroup).attr("value", name).text("#{name} (#{type} x#{multiplicator})")
            option.prop('selected', 'selected').attr("selected", "selected") if social == name

        else
          option = $("<option>").appendTo(node).attr("value", name).text(name)
          if "#{social}" == "#{name}"
            option.prop('selected', 'selected').attr("selected", "selected")







