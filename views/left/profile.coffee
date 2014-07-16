###
  View for showing the profile information for a character
###

define ['views/bases/leftbox', 'text!templates/profile.hbs'], (BaseView, hbs) ->
  class ProfileView extends BaseView
    template: _.template (hbs)
    name: 'profile'
    event: ['change:profession', 'change:culture', 'change:race', 'change:name', 'change:profile', 'change:gender',
            'change:lifegrade', 'change:skills', 'change:attributes']






