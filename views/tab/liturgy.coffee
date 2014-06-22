###
  View for selecting magic skills
###

define ['views/bases/valuebox', 'data/skill'], (BaseView, skills) ->
  class SkillView extends BaseView
    name: 'liturgy'
    for: 'skills'
    caption: __("Liturgien")

    event: ['change:race', 'change:culture', 'change:profession']
    collection: skills
    view: [__('Liturgien')]






