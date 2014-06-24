###
  View for selecting skills
###

define ['views/bases/valuebox', 'data/skill'], (BaseView, skills) ->
  class SkillView extends BaseView
    name: 'skills'
    for: 'skills'
    caption: __("Talente")

    event: ['change:race', 'change:culture', 'change:profession']
    collection: skills
    view: [__('Körpertalente'), __('Gesellschaftstalente'), __('Naturtalente'), __('Wissenstalente'),
           __('Handwerkstalente'), __('Gaben')]






