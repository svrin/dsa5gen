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

    event: ['change:equipments']
    collection: equipments

    className: ->
      'box-values ' + super

    initialize: (options) ->
      super options

      @listenTo @.collection, "reset", @render
      @listenTo @.collection, "add", @add_equipment

      @render

      # on keyinput the options are filtered
      @.$el.off "keyup.dsa5gen.equipment-search"
      @.$el.on "keyup.dsa5gen.equipment-search", "[type=search]", @search_equipment

      # Dblclick on an option in adder adds the equipment
      @.$el.off "dblclick.dsa5gen.equipment-equip"
      @.$el.on "dblclick.dsa5gen.equipment-equip", "option", @equip_equipment

    add_equipment: (equipment) =>

      # Build optgroup
      group = equipment.get('groups')[1] || equipment.get('groups')[0]
      optgroup = @.$el.find("select").find("optgroup[label='#{group}']")
      if optgroup.length == 0
        optgroup = $("<optgroup>").attr("label", group).appendTo(@.$el.find("select"))

      # Build option
      $("<option>").text(equipment.get('name')).appendTo(optgroup)

    search_equipment: (arg) =>
      name = $(arg.target).val() || arg
      re = new RegExp(name, "i")

      @.$el.find("option").each (i, node) =>
        if $(node).text().match(re)
          $(node).show()
        else
          $(node).hide()

      # Hide all optgroup with no visible options
      @.$el.find("optgroup").each (i, optgroup) =>
        options = $("option", optgroup).filter (i, node) ->
          $(node).css("display") == "inline" or $(node).css("display") == "block"
        if options.length > 0
          $(optgroup).show()
        else
          $(optgroup).hide()

    equip_equipment: (arg, value) =>
      name = $(arg.target).text() || arg
      equipment = equipments.findWhere({name: name})
      if equipment
        @.$el.find("ul").append @.item_template({name: name, item: equipment, value: value || 0})
      else
        @.$el.find("ul").append @.item_template({name: name, item: false, value: value || 0})

    render: (character, node, new_value) =>
      if @.$el and @.$el.length and node and node[0] == "equipments"
        @.$el.find("[data-for='#{node[0]}.#{node[1]}']").text(new_value)
        @.$el.find("[data-key='#{node[0]}.#{node[1]}']").attr("data-value", new_value)
      else
        super

        @.collection.each (equipment) =>
          @.add_equipment(equipment)

        _.each @.model.get('equipments'), (value, equipment) =>
          @.equip_equipment(equipment, value)