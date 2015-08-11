###
  View for selecting magic skills
###

define ['views/bases/valuebox', 'data/skill'], (BaseView, skills) ->
  class LiturgyView extends BaseView
    name: 'liturgy'
    for: 'skills'
    caption: __("Götterwirken")

    event: ['change:race', 'change:culture', 'change:profession']
    collection: skills
    view: skills.model.prototype.liturgyGroups






