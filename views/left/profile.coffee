###
  View for showing the profile information for a character
###

define ['views/bases/leftbox', 'text!templates/profile.hbs'], (BaseView, hbs) ->
  class ProfileView extends BaseView
    template: _.template (hbs)
    name: 'profile'
    event: 'change'





