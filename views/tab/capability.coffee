###
  View for selecting vantages
###

define ['views/bases/valuebox', 'data/skill'], (BaseView, skills) ->
  class CapabilityView extends BaseView
    name: 'capability'
    for: 'skills'
    caption: __("Sonderfertigkeiten")

    event: ['change:race', 'change:culture', 'change:profession']
    collection: skills
    view: skills.model.prototype.capabilityGroups






