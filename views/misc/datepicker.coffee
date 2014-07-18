###
  A DSA datepicker
###

class DereDate
  ###
    Ein aventurische Datumsangabe
  ###

  daysInYear = (30 * 12 + 5)

  monthNames = [
    "Praios"
    "Rondra"
    "Efferd"
    "Travia"
    "Boron"
    "Hesinde"
    "Firun"
    "Tsa"
    "Phex"
    "Peraine"
    "Ingerimm"
    "Rahja"
    "Namenlose Tage"
  ]

  weekNames = [
    "Windstag"
    "Erdtag"
    "Markttag"
    "Praiostag"
    "Rohalstag"
    "Feuertag"
    "Wassertag"
  ]

  constructor: (value) ->
    if value? && value.trim()
      [@day, @month, @year] = value.split(" ")
    else
      @year = (new Date()).getFullYear() - 977
      @month = 1
      @day = 1
    @normalize()

  normalize: ->
    @day = @day or 0
    if @day.endsWith
      @day = parseInt(@day)

    @month = @month or 0
    if @month.endsWith
      @month = monthNames.indexOf(@month) + 1

    @year = @year or 0
    if @year.endsWith
      @year = parseInt(@year)

    while @day > 30 or (@day > 5 && @month % 13 == 0)
      if @month % 13 == 0
        @month += 1
        @day -= 5
      else
        @month += 1
        @day -= 30

    while @day < 1
      if @month % 13 == 0
        @month -= 1
        @day += 5
      else
        @month -= 1
        @day += 30

    while @month > 13
      @year += 1
      @month -= 13

    while @month < 1
      @year -= 1
      @month += 13

  ### DAY ###

  getDay: ->
    return @day

  setDay: (day) ->
    @day = day
    @normalize()

  ### MONTH ###

  getMonth: ->
    return @month

  getMonthName: () ->
    return monthNames[@getMonth() - 1]

  incrMonth: ->
    @month += 1
    @day = 1
    @normalize()

  decrMonth: ->
    @month -= 1
    @day = 1
    @normalize()

  setMonth: (month) ->
    @month = month
    @normalize()

  ### YEAR ###

  getYear: ->
    return @year

  setYear: (year) ->
    @year = year

  ### UTILS ###

  getDaysInMonth: ->
    return if @month == 13 then 5 else 30

  getFirstWeekDayOfYear: () ->
    return (@year * daysInYear) % 7

  getFirstWeekDayOfMonth: () ->
    return (@getFirstWeekDayOfYear() + (@getMonth() - 1) * 30) % 7

  toString: ->
    return @getDay() + ". " + @getMonthName() + " " + @getYear() + " BF"


define [], () ->
  class DatePicker extends Backbone.View
    tagName: 'section'
    className: 'box-table'

    initialize: (options) ->
      super options

      @.current = new DereDate(options['element'].val())

      options['container'].append @$el
      @.container = options['container']

      options['element'].on 'focus', @.show
      #options['element'].on 'blur', @.hide
      @.element = options['element']

      @.$el.on "click.datepicker.setDay", "a[href*=':setDay']", @.setDay
      @.$el.on "click.datepicker.incrMonth", "a[href*=':incrMonth']", @.incrMonth
      @.$el.on "click.datepicker.decrMonth", "a[href*=':decrMonth']", @.decrMonth

      # A callback on change
      @.callback = options['callback']


    thead: """
      <thead>
        <tr>
          <td>
            <a href=":decrMonth()"></a>
          </td>
          <th colspan='5'>
            <%= current.getMonthName() %> <%= current.getYear() %> BF
          </th>
          <td>
            <a href=":incrMonth()"></a>
          </td>
        </tr>
        <tr>
          <th title="Windstag" width="40px">
            Wi
          </th>
          <th title="Erdstag" width="40px">
            Er
          </th>
          <th title="Markttag" width="40px">
            Ma
          </th>
          <th title="Praiostag" width="40px">
            Pr
          </th>
          <th title="Rohalstag" width="40px">
            Ro
          </th>
          <th title="Feuertag" width="40px">
            Fe
          </th>
          <th title="Wassertag" width="40px">
            Wa
          </th>
        </tr>
      </thead>
    """

    tbody: """
      <tbody>
      </tbody>
    """

    dskip: """
      <td>&nbsp;</td>
    """

    dday: """
      <td><a data-day="<%= day %>" href=":setDay"><%= day %></a></td>
    """

    render: ->
      rtn = super()

      @.$el.html("")
      $table = $("<table>").appendTo @.$el

      # Append thead & tbody
      $table.append _.template(@.thead)({current: @.current})
      $table.append _.template(@.tbody)({current: @.current})

      # Create a row
      $tr = $("<tr>").appendTo $table.find("tbody")

      # Append all the days
      i = 0
      skip = @.current.getFirstWeekDayOfMonth()
      while skip-- > 0
        $tr.append(_.template(@.dskip)())
        i++

      # Now append days
      day = 0
      while ++day <= @.current.getDaysInMonth()
        $tr.append(_.template(@.dday)({day: day}))
        i++

        if i >= 7
          i -= 7
          $tr = $("<tr>").appendTo $table.find("tbody")

      return @

    incrMonth: (event) =>
      event.preventDefault()
      @.current.incrMonth()
      @.render()

    decrMonth: (event) =>
      event.preventDefault()
      @.current.decrMonth()
      @.render()

    setDay: (event) =>
      event.preventDefault()
      day = $(event.target).data("day")
      @.current.setDay(day)
      @.element.val @.current.toString()
      if @.callback
        @.callback.call(@.element, @.current.toString())
      @.hide()

    show: (event) =>
      @.render()

      @.$el.show()
      @.$el.css "position", "absolute"
      @.$el.css "top", @.element.offset().top + @.element.height()
      @.$el.css "left", @.element.offset().left
      @.$el.css "z-index", 100

    hide: (event) =>
      @.$el.css "z-index", 0
      @.$el.hide()








