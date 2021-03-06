###
  add_pool(amount, references)

  Add an AP pool which get elements of references get payed first
###

add_pool = (amount, elements...) ->
  class PoolView extends Backbone.View
    tagName: 'div'

    initialize: ->
      require ['text!templates/add_pool.hbs'], (hbs) =>
        @template = _.template (hbs)
        @render()

    calc: (context) =>
      return NaN

    refresh: (context, groups) =>
      if _.isFunction(amount)
        amount = amount(context)

      current = amount

      _.each elements, (element) =>
        if groups[element]
          current -= groups[element]["costs"]

      if current <= 0
        current = 0

      @$el.find("[data-for=amount]").text current
      return amount - current

    render: =>
      @$el.html @template({amount: amount, elements: elements, self: @})
      @delegateEvents()

      return @

  new PoolView
