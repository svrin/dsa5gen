###
  View for editing the profile information for a character
###

define ['views/bases/tabbox', 'text!templates/profile_edit.hbs', 'data/lifegrade'], (BaseView, hbs, lifegrades) ->
  class ProfileView extends BaseView
    template: _.template (hbs)
    lifegrades: lifegrades

    name: 'profile'
    caption: __("Profil")

    event: ['change:profile', 'change:race', 'change:lifegrade']

    render: ->
      rtn = super()

      gender = this.model.get('gender') || 'x'
      profile = this.model.get('profile')
      lifegrade = this.model.get('lifegrade')

      # Gender
      @.$el.find("[name='character.gender'][value=#{gender}]").prop("checked", "checked")

      # Lifegrade
      if lifegrade
        @.$el.find("[name='character.lifegrade'][value=#{lifegrade.id}]").prop("checked", "checked")

      # Use Datepicker for birthday
      require ['views/misc/datepicker'], (View) =>
        new View({
          container: $("body"),
          element: @.$el.find("[name='character.profile.birthday']"),
          callback: (value) =>
            this.model.get('profile')['birthday'] = value
        })

      # Allow chaining
      return rtn

    change: (event) =>
      node = $(event.target)
      if not node.is "select"
        return super event

      value = node.val()
      if value == "%!"
        options = $('optgroup option', node)
        option = $(_.sample options)
        option.prop "selected", "selected"
        super event
      else if value == "%?"
        option = node.children("option:first")
        value = prompt "", ""
        option.val value
        option.text value
        option.prop "selected", "selected"
        super event
      else
        super event
      
      

