###
  distribute(amount, list of reference)

  Let the user distribute amount many points over reference

  like distribute(4, "Alaani", "Nujuka") would the user to assign
  4 points between Alaani and Nujuka.
###

distribute = (amount, elements...) ->
  class distributeView extends Backbone.View
    tagName: 'div'

    initialize: ->
      @render()

    render: ->
      @$el.append 'Points available: ' + amount
      @$el.append 'For Elements: ' + elements

  new distributeView


