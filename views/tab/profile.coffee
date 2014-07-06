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
    
    build_select: (race, profile, attr) =>
      node = @.$el.find("[name='character.profile.#{attr}']")
      _.each race.get(attr), (item) ->
        item_node = $("<option>").text(item[0]).attr("value", item[0])
        node.find('optgroup').append(item_node)
      if profile[attr]
      	node.find('option:first').text(profile[attr]).val(profile[attr]).prop('selected', 'selected')
    
    render: ->
      rtn = super()

      gender = this.model.get('gender') || 'x'
      race = this.model.get('race')
      profile = this.model.get('profile')
      lifegrade = this.model.get('lifegrade')
      
      # Gender
      @.$el.find("[name='character.gender'][value=#{gender}]").prop("checked", "checked")

      # Lifegrade
      if lifegrade
        @.$el.find("[name='character.lifegrade'][value=#{lifegrade.id}]").prop("checked", "checked")
      
      # The additional informations are only available when a race has been selected
      return rtn if not race
      
      # Build the hair select
      @.build_select race, profile, 'hair'
      
      # Build the eye select
      @.build_select race, profile, 'eye'
      	
      # Height
      height = profile.height or race.get('height', this.model)?[0]
      @.$el.find("[name='character.profile.height']").val(height)
      
      # Weight
      weight = profile.weight or race.get('weight', this.model)
      @.$el.find("[name='character.profile.weight']").val(weight)

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
      
      

