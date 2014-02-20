/**
 * User: Severin Orth <severin.orth@st.ovgu.de>
 * Date: 20.02.14
 * Time: 00:58
 */

define(["collections/base", "models/race"], function (Collection) {
   return Collection.extend({
        model: require("models/race"),

        url: "/api/race"

   });
});
