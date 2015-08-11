###
  choice(list of ammounts..., list of reference...)

  Let the user choice len(amounts) many from reference and assign the amounts to them

  like choice(4, 2, "Dolche", "Raufen", "Ringen") would allow the user to choice one of
  "Dolche", "Raufen", Ringen" with amount 4 and another one with 2.
###

choice = (args...) ->
  amounts = _.map(args, (arg) ->
    _.isNumber arg)
  elements = _.map(args, (arg) ->
    not _.isNumber arg)

  if not amounts
    amounts = [1]

  class ChoiceView extends Backbone.View
    tagName: 'div'

    initialize: ->
      @render()

    render: ->
      @$el.append 'Choice amounts: ' + amounts
      @$el.append 'For Elements: ' + elements

  rtn = new ChoiceView
  rtn.elements = elements
  rtn.amounts = amounts


