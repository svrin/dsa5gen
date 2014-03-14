###
  Select Box View, base template
###

define ['views/bases/tabbox', 'text!templates/selectbox.hbs'], (TabView, hbs) ->
  class SelectView extends TabView
    template: _.template (hbs)

    className: ->
      'box-select ' + super

    initialize: (options) ->
      super options
      
      @listenTo @.collection, "reset", @render

    render: =>
      super

      # Select the value if present
      val = @model.get("_" + @.name)
      if val
        @$el.find("[value='" + val + "']").prop("checked", true)

    select: (event) =>
      @.model.set @.name, $(event.target).val()

      if @.next?
        window.location.href = "#" + @.next






