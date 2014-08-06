###
  Select Box for choosing equipment
###

define ['views/bases/tabbox', 'text!templates/equipment.hbs', 'text!templates/equipment_item.hbs',
        'data/equipment'], (TabView, hbs, hbs_item, equipments) ->
  class EquipmentView extends TabView
    template: _.template (hbs)

    item_template: _.template(hbs_item)

    name: 'equipment'
    caption: __("Ausrüstung")

    event: ['change:equipment']
    collection: equipments

    className: ->
      'box-values ' + super

    initialize: (options) ->
      super options

      @listenTo @.collection, "reset", @render
      @listenTo @.collection, "add", @add_equipment

      @render

      @.$el.off "dblclick.dsa5gen.equip"
      @.$el.on "dblclick.dsa5gen.equip", "option", @equip_equipment

    add_equipment: (equipment) =>

      # Build optgroup
      group = equipment.get('groups')[1] || equipment.get('groups')[0]
      optgroup = @.$el.find("select").find("optgroup[label='#{group}']")
      if optgroup.length == 0
        optgroup = $("<optgroup>").attr("label", group).appendTo(@.$el.find("select"))

      # Build option
      $("<option>").text(equipment.get('name')).appendTo(optgroup)

    equip_equipment: (arg, value) =>
      name = $(arg.target).text() || arg
      equipment = equipments.findWhere({name: name})
      if equipment
        @.$el.find("ul").append @.item_template({name: name, item: equipment, value: value || 0})
      else
        @.$el.find("ul").append @.item_template({name: name, item: false, value: value || 0})

    render: =>
      super

      @.collection.each (equipment) =>
        @.add_equipment(equipment)

      _.each @.model.get('equipments'), (value, equipment) =>
        @.equip_equipment(equipment, value)