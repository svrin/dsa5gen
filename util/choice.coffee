###
  choice(list of ammounts..., list of reference...)

  Let the user choice len(amounts) many from reference and assign the amounts to them

  like choice(4, 2, "Dolche", "Raufen", "Ringen") would allow the user to choice one of
  "Dolche", "Raufen", Ringen" with amount 4 and another one with 2.
###

choice = (args...) ->
  amounts = _.filter(args, (arg) -> _.isNumber arg)
  elements = _.filter(args, (arg) -> not _.isNumber arg)

  if not amounts
    amounts = [1]

  class ChoiceView extends Backbone.View
    tagName: 'div'

    initialize: ->
      require ['text!templates/choice.hbs'], (hbs) =>
        @template = _.template (hbs)
        @render()

    calc: (context) =>
      costs = []
      @$el.find("[data-for=element]").each () ->
        element = $(@).val() || $(@).text()
        amount = $(@).next("[data-for=amount]").val() || $(@).next("[data-for=amount]").text()
        costs.push [element, amount]

      if costs.length == 1
        return costs[0]
      else
        console.warn "More than one amounts cannot be handle doring cost function"
        return costs[0]

    refresh: (context, groups) =>
      return 0

    render: ->
      @$el.html @template({amounts: amounts, elements: elements, self: @})
      @delegateEvents()

      return @

  rtn = new ChoiceView
  rtn.elements = elements
  rtn.amounts = amounts
  return rtn


