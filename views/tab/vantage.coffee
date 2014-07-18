###
  View for selecting vantages
###

define ['views/bases/valuebox', 'data/skill'], (BaseView, skills) ->
  class VantageView extends BaseView
    name: 'vantage'
    for: 'skills'
    caption: __("Vor- und Nachteile")

    event: ['change:race', 'change:culture', 'change:profession']
    collection: skills
    view: skills.model.prototype.vantageGroups






