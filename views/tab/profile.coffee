###
  View for editing the profile information for a character
###

define ['views/bases/tabbox', 'text!templates/profile_edit.hbs'], (BaseView, hbs) ->
  class ProfileView extends BaseView
    template: _.template (hbs)
    
    name: 'profile'
    caption: __("Profil")
    
    event: ['change:profile', 'change:race']
    
    build_select: (race, profile, attr) =>
      node = @.$el.find("[name='character.profile.#{attr}']")
      _.each race.get('profile')?[attr], (item) ->
        item_node = $("<option>").text(item[0]).attr("value", item[0])
        node.find('optgroup').append(item_node)
      if profile[attr]
      	node.find('option:first').text(profile[attr]).val(profile[attr]).prop('selected', 'selected')
    
    render: ->
      rtn = super()
      
      race = this.model.get('race')
      profile = this.model.get('profile')
      
      # Gender
      @.$el.find("[name='character.gender'][value=#{profile.gender}]").prop("selected", "selected")
      
      # The additional informations are only available when a race has been selected
      return rtn if not race
      
      # Build the hair select
      @.build_select race, profile, 'hair'
      
      # Build the eye select
      @.build_select race, profile, 'eye'
      	
      # Height
      height = profile.height or race.get('profile')?.height[0]
      this.$el.find("[name='character.profile.height']").val(height)
      
      # Weight
      weight = profile.weight or race.get('profile')?.weight.call(this.model)
      this.$el.find("[name='character.profile.weight']").val(weight)
      
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
      
      

