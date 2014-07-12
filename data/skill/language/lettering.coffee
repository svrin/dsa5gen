define "data/skill/language/lettering", [], () ->
  min: 0
  count: "roman"

  groups: [
    __("Schrift")
  ]

require ["data/skill/language/lettering"], (S) ->
  skills.add _.extend {}, S,
    name: __("Altes Alaani")
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Alte Kemi-Hieroglyphen")
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Altes Amulashtra")
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Neues Amulashtra")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Angram-Bilderschrift")
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Arkanil-Schrift")
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Chrmk")
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Chuchas")
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Drakhard-Zinken")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Drakned-Glyphen")
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Geheiligte Glyphen von Unau")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Gimaril")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Gjalskische Runen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Imperiale Zeichen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Isdira- und Asdharia-Zeichen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Kusliker Zeichen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Mahrische Glyphen")
    SF: "B"

  skills.add _.extend {}, S,
    name: __("Nanduria-Zeichen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Rogolan-Runen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Trollische „Raumbilderschrift“")
    SF: "C"

  skills.add _.extend {}, S,
    name: __("Tulamidya-Zeichen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Wudu-Zeichen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Ur-Tulamidya-Zeichen")
    SF: "A"

  skills.add _.extend {}, S,
    name: __("Zhayad-Zeichen")
    SF: "A"