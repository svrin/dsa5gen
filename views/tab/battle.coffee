###
  View for selecting battle skills
###

define ['views/bases/valuebox', 'data/skill'], (BaseView, skills) ->
  class SkillView extends BaseView
    name: 'battle'
    for: 'skills'
    caption: __("Kampftalente")

    event: ['change:race', 'change:culture', 'change:profession']
    collection: skills
    view: skills.model.prototype.battleGroups






