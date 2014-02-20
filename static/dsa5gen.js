/**
 * User: Severin Orth <severin.orth@st.ovgu.de>
 * Date: 19.02.14
 * Time: 23:45
 */

// Bind NProgress
$(document).ajaxStart(function() { NProgress.start(); });
$(document).ajaxStop(function() { NProgress.done(); });

// Require models
require(["collections/attribute", "collections/culture", "collections/profession", "collections/race"], function (attributeCollection, cultureCollection, professionCollection, raceCollection) {
   console.log("Loaded collections");

    var attributes = new attributeCollection();
    attributes.fetch();

    var cultures = new cultureCollection();
    cultures.fetch();

    var professions = new professionCollection();
    professions.fetch();

    var races = new raceCollection();
    races.fetch();
});
