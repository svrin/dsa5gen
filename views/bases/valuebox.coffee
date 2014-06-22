###
  Select Box View, base template
###

define ['views/bases/tabbox', 'text!templates/valuebox.hbs'], (TabView, hbs) ->
  class SelectView extends TabView
    template: _.template (hbs)

    className: ->
      'box-values ' + super

    initialize: (options) ->
      super options

      @listenTo @.collection, "reset", @render

      if @.for?
        @listenTo @.model, "change:#{@.for}", @item_change

    render: =>
      super

    item_change: (character, element) =>
      value = character.get(element[0])[element[1]]
      $("[data-for='#{element[0]}.#{element[1]}']").text value






