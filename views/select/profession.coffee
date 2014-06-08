###
  View for selecting a race
###

define ['views/bases/selectbox', 'data/profession'], (BaseView, professions) ->
  class ProfessionView extends BaseView
    name: 'profession'
    caption: __("Profession")

    event: ['change:profession', 'change:culture', 'change:race', 'change:profile']
    collection: professions

    # Filter
    options:
      common: [__('Geläufige Professionen'), (profession) ->

        # Geläufige Professionen stehen einmal bei der Kultur
        # Und geläufige/ungeläufige bei der Profession
        if profession.get('cultures')['uncommon'] and culture.in(profession.get('cultures')['uncommon'])
          # Kultur ist als uncommon bei der Profession eingetragen
          return false

        if profession.get('cultures')['common'] and culture.in(profession.get('cultures')['common'])
          # Kultur ist als common bei der Profession eingetragen
          return true

        if profession.in(culture.get('professions'))
          # Profession ist als common bei Kultur eingetragen
          return true

        return null
      ]

      all: [__('Alle Professionen'), () ->
        return true
      ]

    # Previous tab
    prev: 'culture'






