###
  View for selecting magic skills
###

define ['views/bases/valuebox', 'data/skill'], (BaseView, skills) ->
  class SkillView extends BaseView
    name: 'magic'
    for: 'skills'
    caption: __("Zauber")

    event: ['change:race', 'change:culture', 'change:profession']
    collection: skills
    view: [__('Zauber'), __('Rituale')]






