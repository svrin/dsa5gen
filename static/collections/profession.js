/**
 * User: Severin Orth <severin.orth@st.ovgu.de>
 * Date: 20.02.14
 * Time: 00:58
 */

define(["collections/base", "models/profession"], function (Collection) {
   return Collection.extend({
        model: require("models/profession"),

        url: "/api/profession"

   });
});