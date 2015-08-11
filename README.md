dsa5gen.de
==========

dsa5gen ist sich im Aufbau befindliche Webanwendung zur Erstellung für Helden im Rollenspielsystem DSA 5.0.

Die Anwendungslogik ist mit Zuhilfename des MVC Backbone in coffeescript gelöst
 und Application-Cache Schnittstelle von HTML5 ermöglicht die Nutzung offline und als app auf Desktop, Tablet oder Handy.

History
-------

Feb/2014: Aufbau der Datenmodelle für DSA 4.1, Evaluieren der benötigten Funktionalitäten.
Sep/2014: Adaption zu DSA 5 BETA
Aug/2015: Anpassung der Modelle für DSA 5

Lizenzen
--------

Aufbau
------
 * [Backbone](http://backbonejs.org/) <br /><br />
   Die Daten sind als Backbone Modelle in /data abgelegt.
   Jedes Verzeichnis stellt dabei einen "Datentyp" dar, welcher dann von einer BackboneColelction verwaltet wird.
   Das zugehörige Modell befindet sich in models, die generierte Collection vom Build Script in /gen/data

        /data/culture            Datenbestand der Kulturen
        /data/profession         Datenbestand der Professionen
        /data/race               Datenbestand der Rassen
        /data/skill             Datenbestand der Talente, Eigenschaften, Vorteile, Nachteile, Sonderfertigkeiten
        /models                  Modellinformationen für Daten

 * [CoffeeScript](http://coffeescript.org/) <br /><br />
   Die Anwendung selbst liegt als coffeescripte in util und views.
   Util stellt "Funktionen" zur Verfügungen (wie zum Beispiel die Initalisierung vom AppCache, Backbone.Router oder
   Funktionalitäten wie .endsWith für strings)
   Views (und ihrer zugehörigten Templates in /templates) Repräsentieren "ein Stück" UI.

        /templates               Mustachetemplates für Views
        /views                   UI
        /util/ajax.coffee        Sorgt für den ladeblaken bei AjaxRequest via NProgress
        /util/backbone.coffee    Verhindert das Fehlschlagen von .save/.sync Aufrufen indem es Anfragen einfach erfolgreich ignoriert.
        /util/cache.coffee       Beinhaltet die Aufrischung des AppCaches.
        /util/i18n.coffee        verwaltet die Aufrufe der \_\_(*) Funktionen
        /util/router.coffee      initlaisiert Backbone.Router und Backbone.History, desweietren müssen hier die Views als Routen eingetragen werden.
        /util/string.coffee      Stringfunktionen
        /util/(choice,choice_from,distribute,find_all).coffee
                                 stellen Funktionalitäten für die Datenmodellierung zur Verfügung

 * [Buildify](https://github.com/powmedia/buildify) <br /><br />
   AppCache verbietet die Einbindung von externen Ressourcen, dies verhindert die direkte Nutzung eines cdn.
   Die Abhängigkeiten werden deswegen von /lib ausgeliefert.
   Die einzelnen Datenmodelle werden Verzeichnisweise zusammengefasst.

        /scripts/fetch.nodejs    Script zum Downloaden der vendor Bibliotheken
        /lib                     Downloadverzeichnis für die vendor Bibliotheken

        /scripts/build.nodejs    Buildscript zur Aggregation der Datenmodelle und der Anwendung.
        /gen/data/template.hbs   Wrappertemplate für die Datenmodelle
        /data                    Datenbestand, wird nach /gen/data aggregiert, dabei wird für jeden Ordner eine .js erstelllt.
        /gen/app.js              Generierte Anwendung
        /resources/appcache.mf   Generiertes manifest für AppCache

 * [RequireJS](http://requirejs.org/) <br /><br />
   Um Abhängigkeiten sinnvoll aufzulösen nutzen wir RequireJS. Auch die Templates werden darüber geladen.

        /views                   Die Einzelnen Backbone.Views mit ihrern Abhängigkeiten auf Templates, Modelle oder anderen Views.

 * [i18n](http://de.wikipedia.org/wiki/Internationalisierung\_\(Softwareentwicklung\)) <br /><br />
   Alle Textbezeichner in den Datenmodellen sind via \_\_(...) markiert um eine Übersetzung und Internationalisierung
   zu ermöglichen. Ein übergeordnete Ziel stellt aber das einfachere Auffinden von Rechtschreibfehlern oder uneindeutigen
   Bezeichner dar.

        /scripts/i18n._coffee    Ließt alle Bezeichner aus und stellt in i18n/de.json diese sortiert zur Verfügung.
        /i18n/de.json            (kommentierte) JSON Datei aller Bezeichner.

 * [LESS](http://lesscss.org) <br /><br />
   Alle Stylesheets liegen in LESS vor.
   Die [IntelliJ](http://www.jetbrains.com/idea/) (oder auch PyCharm/Webstorm) erlauben diese Scripte direkt bei Modifikation zu Kompilieren (Stichwort FileWatcher)

        /css                     Stylesheets in LESS







