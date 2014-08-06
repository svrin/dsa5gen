define "data/equipment/nahkampfwaffen", [], () ->
  groups: [
    __("Ausrüstung")
    __("Nahkampfwaffen")
  ]

require ["data/equipment/nahkampfwaffen"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Amazonensäbel")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2
    costs: 180


  equipments.add _.extend {}, S,
    name: __("Andergaster")
    dice: "2W6+8"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Zweihandschwerter")

    weight: 5.5
    costs: 350


  equipments.add _.extend {}, S,
    name: __("Anderthalbhänder")
    dice: "1W6+6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2.5
    costs: 250


  equipments.add _.extend {}, S,
    name: __("Arbach")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2.5
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Baccanaq")
    dice: "1W+1"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Raufen")

    weight: 2
    costs: 30


  equipments.add _.extend {}, S,
    name: __("Barbarenschwert")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2.5
    costs: 200


  equipments.add _.extend {}, S,
    name: __("Barbarenstreitaxt")
    dice: "2W6+8"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 6.25
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Basiliskenzunge")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.75
    costs: 70


  equipments.add _.extend {}, S,
    name: __("Bastardschwert")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 3
    costs: 200


  equipments.add _.extend {}, S,
    name: __("Beil")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 1.75
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Handaxt")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 1.75
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Boronssichel")
    dice: "2W6+6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Zweihandschwerter")

    weight: 4
    costs: 400


  equipments.add _.extend {}, S,
    name: __("Brabakbengel")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandschwerter")

    weight: 3
    costs: 100


  equipments.add _.extend {}, S,
    name: __("Breitschwert")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Byakka")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 3.25
    costs: 90


  equipments.add _.extend {}, S,
    name: __("Degen")
    dice: "1W6+3"

    bonus:
      attribute: "GE"
      value: 15

    distance: __("mittel")
    skill: __("Fechtwaffen")

    weight: 1
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Dolch")
    dice: "1W6+1"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.5
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Doppelkhunchomer")
    dice: "2W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Zweihandschwerter")

    weight: 3.75
    costs: 250


  equipments.add _.extend {}, S,
    name: __("Drachenzahn")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("mittel")
    skill: __("Dolche")

    weight: 1
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Dreizack")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2.25
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Dreschflegel")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2.5
    costs: 15


  equipments.add _.extend {}, S,
    name: __("Dschadra")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Eberfänger")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 1
    costs: 60


  equipments.add _.extend {}, S,
    name: __("Efferdbart")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2.25
    costs: 80


  equipments.add _.extend {}, S,
    name: __("Entermesser")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 1.75
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Fackel")
    dice: "1W6+1"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 0.75
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Felsspalter")
    dice: "2W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 3.75
    costs: 250


  equipments.add _.extend {}, S,
    name: __("Fleischerbeil")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 1.5
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Florett")
    dice: "1W6+3"

    bonus:
      attribute: "GE"
      value: 15

    distance: __("mittel")
    skill: __("Fechtwaffen")

    weight: 0.75
    costs: 180


  equipments.add _.extend {}, S,
    name: __("Geißel")
    dice: "1W6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Peitsche")

    weight: 0.75
    costs: 15


  equipments.add _.extend {}, S,
    name: __("Glefe")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3
    costs: 45


  equipments.add _.extend {}, S,
    name: __("Großer Sklaventod")
    dice: "2W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Zweihandschwerter")

    weight: 4
    costs: 350


  equipments.add _.extend {}, S,
    name: __("Gruufhai")
    dice: "1W6+6"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 4.5
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Hakendolch")
    dice: "1W6+1"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 1.25
    costs: 90


  equipments.add _.extend {}, S,
    name: __("Hakenspieß")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3
    costs: 70


  equipments.add _.extend {}, S,
    name: __("Haumesser")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2.25
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Hellebarde")
    dice: "1W6+6"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3.75
    costs: 75


  equipments.add _.extend {}, S,
    name: __("Holzfälleraxt")
    dice: "2W6"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 4
    costs: 80


  equipments.add _.extend {}, S,
    name: __("Holzspeer")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 1.5
    costs: 10


  equipments.add _.extend {}, S,
    name: __("Jagdmesser")
    dice: "1W6+1"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.5
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Jagdspieß")
    dice: "1W6+6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2
    costs: 80


  equipments.add _.extend {}, S,
    name: __("Kampfstab")
    dice: "1W6+1"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2
    costs: 40


  equipments.add _.extend {}, S,
    name: __("Kettenkugel")
    dice: "2W6"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Kettenwaffen")

    weight: 6.25
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Kettenstab")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Kettenwaffen")

    weight: 2.5
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Keule")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 2.5
    costs: 15


  equipments.add _.extend {}, S,
    name: __("Khunchomer")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2.25
    costs: 130


  equipments.add _.extend {}, S,
    name: __("Knüppel")
    dice: "1W6+1"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 1.5
    costs: 0


  equipments.add _.extend {}, S,
    name: __("Korspieß")
    dice: "2W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("lang")
    skill: __("Zweihandhiebwaffen")

    weight: 3.5
    costs: 200


  equipments.add _.extend {}, S,
    name: __("Kriegsfächer")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 1.25
    costs: 250


  equipments.add _.extend {}, S,
    name: __("Kriegsflegel")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Kriegshammer")
    dice: "2W6+3"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 4.5
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Kriegslanze")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3.75
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Kurzschwert")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("kurz")
    skill: __("Schwerter")

    weight: 1
    costs: 80


  equipments.add _.extend {}, S,
    name: __("Kusliker Säbel")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 1.75
    costs: 160


  equipments.add _.extend {}, S,
    name: __("Langdolch")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.75
    costs: 45


  equipments.add _.extend {}, S,
    name: __("Lindwurmschläger")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 2.5
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Linkhand")
    dice: "1W6+1"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.75
    costs: 90


  equipments.add _.extend {}, S,
    name: __("Magierstab (kurz)")
    dice: "1W6"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("kurz")
    skill: __("Hiebwaffen")

    weight: 1
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Magierstab (lang)")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2.25
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Magierstab (mittel)")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Stangenwaffen")

    weight: 1.75
    costs: 100


  equipments.add _.extend {}, S,
    name: __("Mengbilar")
    dice: "1W6+1"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.5
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Messer")
    dice: "1W6"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.25
    costs: 10


  equipments.add _.extend {}, S,
    name: __("Molokdeschnaja")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("")
    skill: __("Hiebwaffen")

    weight: 2.5
    costs: 90


  equipments.add _.extend {}, S,
    name: __("Morgenstern")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Kettenwaffen")

    weight: 3.5
    costs: 100


  equipments.add _.extend {}, S,
    name: __("Nachtwind")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 1.75
    costs: 500


  equipments.add _.extend {}, S,
    name: __("Neethaner Langaxt")
    dice: "2W6+2"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 4
    costs: 160


  equipments.add _.extend {}, S,
    name: __("Neunschwänzige")
    dice: "1W6+1"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Peitsche")

    weight: 2
    costs: 60


  equipments.add _.extend {}, S,
    name: __("Ochsenherde")
    dice: "2W6+6"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Kettenwaffen")

    weight: 7.5
    costs: 250


  equipments.add _.extend {}, S,
    name: __("Ogerfänger")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 1
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Ogerschelle")
    dice: "2W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("kurz")
    skill: __("Kettenwaffen")

    weight: 6
    costs: 180


  equipments.add _.extend {}, S,
    name: __("Orchidee")
    dice: "1W6+1"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Raufen")

    weight: 1
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Orknase")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 2.75
    costs: 75


  equipments.add _.extend {}, S,
    name: __("Pailos")
    dice: "2W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 4.5
    costs: 300


  equipments.add _.extend {}, S,
    name: __("Panzerarm")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Raufen")

    weight: 5.5
    costs: 70


  equipments.add _.extend {}, S,
    name: __("Panzerstecher")
    dice: "1W6+4"

    bonus:
      attribute: "GE"
      value: 15

    distance: __("kurz")
    skill: __("Fechtwaffen")

    weight: 2
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Partisane")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3.75
    costs: 80


  equipments.add _.extend {}, S,
    name: __("Peitsche")
    dice: "1W6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Peitsche")

    weight: 1.5
    costs: 25


  equipments.add _.extend {}, S,
    name: __("Pike")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 4.5
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Rabenschnabel")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 2.25
    costs: 130


  equipments.add _.extend {}, S,
    name: __("Rapier")
    dice: "1W6+3"

    bonus:
      attribute: "GE"
      value: 15

    distance: __("mittel")
    skill: __("Fechtwaffen")

    weight: 1
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Richtschwert")
    dice: "2W6+3"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandschwerter")

    weight: 5
    costs: 200


  equipments.add _.extend {}, S,
    name: __("Robbentöter")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 1.75
    costs: 200


  equipments.add _.extend {}, S,
    name: __("Rondrakamm")
    dice: "2W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandschwerter")

    weight: 3
    costs: 250


  equipments.add _.extend {}, S,
    name: __("Runaskraja")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 1.75
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Säbel")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 1.5
    costs: 100


  equipments.add _.extend {}, S,
    name: __("Scheibendolch")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 1
    costs: 60


  equipments.add _.extend {}, S,
    name: __("Schlagring")
    dice: "1W3+1"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("kurz")
    skill: __("Schilde")

    weight: 0.5
    costs: 25


  equipments.add _.extend {}, S,
    name: __("Schmiedehammer")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 3.75
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Schnitter")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 2.25
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Schwerer Dolch")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.75
    costs: 40


  equipments.add _.extend {}, S,
    name: __("Schwert")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2
    costs: 180


  equipments.add _.extend {}, S,
    name: __("Sense")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2.5
    costs: 30


  equipments.add _.extend {}, S,
    name: __("Sichel")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 0.75
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Sklaventod")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2
    costs: 200


  equipments.add _.extend {}, S,
    name: __("Skraja")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 1.25
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Sonnenzepter")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 2.25
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Speer")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2
    costs: 30


  equipments.add _.extend {}, S,
    name: __("Spitzhacke")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 5
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Stein")
    dice: "1W3+1"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Raufen")

    weight: 1
    costs: 0


  equipments.add _.extend {}, S,
    name: __("Stockdegen")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 15

    distance: __("mittel")
    skill: __("Fechtwaffen")

    weight: 1
    costs: 180


  equipments.add _.extend {}, S,
    name: __("Stoßspeer")
    dice: "2W6+2"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3.75
    costs: 100


  equipments.add _.extend {}, S,
    name: __("Streitaxt")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 3
    costs: 0


  equipments.add _.extend {}, S,
    name: __("Streitkolben")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 3
    costs: 80


  equipments.add _.extend {}, S,
    name: __("Sturmsense")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Zweihandhiebwaffen")

    weight: 3
    costs: 40


  equipments.add _.extend {}, S,
    name: __("Turnierlanze")
    dice: "1W6+1"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Tuzakmesser")
    dice: "1W6+6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Schwerter")

    weight: 2.5
    costs: 400


  equipments.add _.extend {}, S,
    name: __("Veteranenhand")
    dice: "1W6+2"

    bonus:
      attribute: "GE"
      value: 14

    distance: __("kurz")
    skill: __("Raufen")

    weight: 1.75
    costs: 100


  equipments.add _.extend {}, S,
    name: __("Vorschlaghammer")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 6.25
    costs: 30


  equipments.add _.extend {}, S,
    name: __("Vulkanglasdolch")
    dice: "1W6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 0.75
    costs: 10


  equipments.add _.extend {}, S,
    name: __("Wanderstab")
    dice: "1W6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Waqqif")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("kurz")
    skill: __("Dolche")

    weight: 1
    costs: 60


  equipments.add _.extend {}, S,
    name: __("Warunker Hammer")
    dice: "1W6+6"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Zweihandhiebwaffen")

    weight: 3.75
    costs: 200


  equipments.add _.extend {}, S,
    name: __("Wolfsmesser")
    dice: "1W6+3"

    bonus:
      attribute: "KK"
      value: 15

    distance: __("mittel")
    skill: __("Fechtwaffen")

    weight: 1.25
    costs: 250


  equipments.add _.extend {}, S,
    name: __("Wurmspieß")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 3
    costs: 120


  equipments.add _.extend {}, S,
    name: __("Zweihänder")
    dice: "2W6+4"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("mittel")
    skill: __("Zweihandschwerter")

    weight: 4
    costs: 250


  equipments.add _.extend {}, S,
    name: __("Zweililien")
    dice: "1W6+2"

    bonus:
      attribute: "KK"
      value: 14

    distance: __("lang")
    skill: __("Stangenwaffen")

    weight: 2
    costs: 200


  equipments.add _.extend {}, S,
    name: __("Zwergenschlägel")
    dice: "1W6+5"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Zweihandhiebwaffen")

    weight: 3
    costs: 150


  equipments.add _.extend {}, S,
    name: __("Zwergenskraja")
    dice: "1W6+4"

    bonus:
      attribute: "KK"
      value: 13

    distance: __("mittel")
    skill: __("Hiebwaffen")

    weight: 2
    costs: 100



