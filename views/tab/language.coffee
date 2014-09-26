###
  View for selecting languages
###

define ['views/bases/valuebox', 'data/skill'], (BaseView, skills) ->
  class SkillView extends BaseView
    name: 'language'
    for: 'skills'
    caption: __("Sprachen & Schriften")

    event: ['change:race', 'change:culture', 'change:profession']
    collection: skills
    view: [__('Sprache'), __('Schrift'), __('Sprachsonderfertigkeiten')]






