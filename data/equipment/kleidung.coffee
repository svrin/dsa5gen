define "data/equipment/kleidungsset", [], () ->
  groups: [
    __("Ausrüstung")
    __("Kleidung")
    __("Kleidungsset")
  ]

  protection: 0

# Kleidungsset
require ["data/equipment/kleidungsset"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Anaurakkleidung")

    protection: 4

    weight: 3
    costs: 100

  equipments.add _.extend {}, S,
    name: __("Bauschkleidung")

    protection: 2

    weight: 12.5
    costs: 8

  equipments.add _.extend {}, S,
    name: __("Lederkleidung")

    protection: 1

    weight: 2.5
    costs: 40

  equipments.add _.extend {}, S,
    name: __("Leinenkleidung")

    protection: 1

    weight: 1.75
    costs: 5

  equipments.add _.extend {}, S,
    name: __("Pelzkleidung")

    protection: 2

    weight: 5
    costs: 80

  equipments.add _.extend {}, S,
    name: __("Samtkleidung")

    protection: 1

    weight: 2
    costs: 60

  equipments.add _.extend {}, S,
    name: __("Seidenkleidung")

    protection: 0

    weight: 1
    costs: 70

  equipments.add _.extend {}, S,
    name: __("Wollkleidung")

    protection: 2

    weight: 2.5
    costs: 6


define "data/equipment/kleidung", [], () ->
  groups: [
    __("Ausrüstung")
    __("Kleidung")
  ]

# Kleidung
require ["data/equipment/kleidung"], (S) ->
  equipments.add _.extend {}, S,
    name: __("Balihoer Wachsmantel")

    weight: 1.75
    costs: 6


  equipments.add _.extend {}, S,
    name: __("Barett")

    weight: 0.1
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Belhanker Röckchen")

    weight: 0.5
    costs: 4


  equipments.add _.extend {}, S,
    name: __("Brusttuch")

    weight: 0.2
    costs: 0.1


  equipments.add _.extend {}, S,
    name: __("Burnus")

    weight: 1.25
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Kaftan")

    weight: 1.25
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Federhut mit breiter Krempe")

    weight: 0.5
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Filzkappe")

    weight: 0.1
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Fez")

    weight: 0.1
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Leinenhaube")

    weight: 0.1
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Halbschuhe (Leder)")

    weight: 0.5
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Halstuch (Seide)")

    weight: 0.1
    costs: 4


  equipments.add _.extend {}, S,
    name: __("Hemd")

    weight: 0.5
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Bluse")

    weight: 0.5
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Horasisches Ballkleid")

    weight: 1.5
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Hose mit Hosentasche")

    weight: 0.75
    costs: 1.5


  equipments.add _.extend {}, S,
    name: __("Hose")

    weight: 0.75
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Hut")

    weight: 0.25
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Jacke")

    weight: 1
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Wams")

    weight: 1
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Kapuze")

    weight: 0.2
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Gugel")

    weight: 0.2
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Kapuzenumhang (lang)")

    weight: 2
    costs: 4


  equipments.add _.extend {}, S,
    name: __("Kleid")

    weight: 1.5
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Korsett (Fischbein und Seide)")

    weight: 1
    costs: 60


  equipments.add _.extend {}, S,
    name: __("Kusliker Kurzmantel")

    weight: 1.25
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Kutte")

    weight: 2
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Ledergürtel")

    weight: 0.2
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Lederhandschuhe")

    weight: 0.1
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Lederschuhe")

    weight: 1
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Lederschürze mit Taschen")

    weight: 1
    costs: 5


  equipments.add _.extend {}, S,
    name: __("Lederstiefel")

    weight: 1
    costs: 12


  equipments.add _.extend {}, S,
    name: __("Leinenüberwurf")

    weight: 0.75
    costs: 6


  equipments.add _.extend {}, S,
    name: __("Lendentuch")

    weight: 0.2
    costs: 0.1


  equipments.add _.extend {}, S,
    name: __("Magierrobe (Taft)")

    weight: 3
    costs: 60


  equipments.add _.extend {}, S,
    name: __("Mantel")

    weight: 1.5
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Schaube")

    weight: 1.5
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Nachthemd (Leinen)")

    weight: 0.5
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Nivesenstiefel")

    weight: 3.75
    costs: 50


  equipments.add _.extend {}, S,
    name: __("Pelzfäustlinge")

    weight: 0.5
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Pelzgefütterte Stiefel")

    weight: 2.5
    costs: 30


  equipments.add _.extend {}, S,
    name: __("Pelzmütze")

    weight: 0.75
    costs: 3


  equipments.add _.extend {}, S,
    name: __("Rock")

    weight: 1
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Sandalen")

    weight: 0.75
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Schal (Wolle)")

    weight: 0.2
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Schleier (feinste Seide)")

    weight: 0.05
    costs: 20


  equipments.add _.extend {}, S,
    name: __("Schneebrille")

    weight: 0.1
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Schnürmieder")

    weight: 0.5
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Seidenschärpe")

    weight: 0.1
    costs: 10


  equipments.add _.extend {}, S,
    name: __("Seidenstrümpfe")

    weight: 0.1
    costs: 12


  equipments.add _.extend {}, S,
    name: __("Strohschuhe")

    weight: 0.5
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Stulpenhandschuhe")

    weight: 0.5
    costs: 8


  equipments.add _.extend {}, S,
    name: __("Stulpenstiefel")

    weight: 2.5
    costs: 30


  equipments.add _.extend {}, S,
    name: __("Tunika")

    weight: 1
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Turban")

    weight: 0.75
    costs: 4


  equipments.add _.extend {}, S,
    name: __("Unterhosen")

    weight: 0.5
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Unterkleid (Leinen)")

    weight: 0.5
    costs: 1


  equipments.add _.extend {}, S,
    name: __("Wappenrock")

    weight: 0.75
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Weste")

    weight: 0.5
    costs: 2


  equipments.add _.extend {}, S,
    name: __("Wollfäustlinge")

    weight: 0.25
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Wollmantel")

    weight: 2
    costs: 6


  equipments.add _.extend {}, S,
    name: __("Wollmütze")

    weight: 0.25
    costs: 0.5


  equipments.add _.extend {}, S,
    name: __("Wollstrümpfe")

    weight: 0.1
    costs: 0.5


